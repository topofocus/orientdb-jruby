require File.expand_path("../spec_helper", __FILE__)

describe "OrientDB" do

  describe "Graph Database" do

    before do
      @database = OrientDB::GraphDatabase.new("local:#{TEST_DB_PATH}/graph").create
      @database = OrientDB::OrientGraph.new("plocal:#{TEST_DB_PATH}/graph")
      @root_node = @database.add_vertex("V", {name: "nm0"}).save
      #this creates a long chain of nodes... 1000 of 'em that are chained together
      @last_node = @root_node
      1000.times do |i|
        new_node = @database.add_vertex("V", { name: "nm #{i+1}" }).save
        puts new_node
        @database.add_edge(nil, @last_node, new_node, "knows")
        @last_node = new_node
      end
      @database.set_root("graph", @root_node)
    end

    after do
      @database.drop
    end

    it "should get the root" do
      @database.get_root("graph").should == @root_node
    end

    it "should traverse to the last node" do
      node = @root_node
      while @database.get_out_edges(node) and !@database.get_out_edges(node).empty?
        node = @database.get_in_vertex(@database.get_out_edges(node).first)
      end
      node.should == @last_node
    end

  end

end
