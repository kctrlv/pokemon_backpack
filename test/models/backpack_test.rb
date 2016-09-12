class BackpackTest < ActiveSupport::TestCase
  test "has initial contents" do
    backpack = Backpack.new({ "1" => 1 })

    assert_equal({ "1" => 1 }, backpack.contents)
  end
end
