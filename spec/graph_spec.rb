require File.expand_path("../spec_helper", __FILE__)

describe "OrientDB" do

  describe "Graph Database" do

    before do
      @database = OrientDB::OrientGraph.new("plocal:#{TEST_DB_PATH}/graph")
      @database = OrientDB::OrientGraph.new("plocal:#{TEST_DB_PATH}/graph")
      @root_node = @database.add_vertex("V", {name: "nm0"})
      @root_node.save
      #this creates a long chain of nodes... 1000 of 'em that are chained together
      @last_node = @root_node
      1000.times do |i|
        new_node = @database.add_vertex("V", { name: "nm #{i+1}" })
        new_node.save
        @database.add_edge(nil, @last_node, new_node, "knows")
        @last_node = new_node
      end
    end

    after do
      @database.drop if @database
    end

    it "should traverse to the last node" do
      node = @root_node
      @last_node = nil
      while node
        nodes = node.get_edges(OrientDB::BLUEPRINTS::Direction::OUT, "knows").to_a
        if nodes.first 
          node = nodes.first.get_vertex(OrientDB::BLUEPRINTS::Direction::IN)
          @last_node = node
        else
          break
        end
      end
      node.should == @last_node
    end

  end

end
