require 'pry'
require './lib/linked_list'
require './lib/node'

### Iteration1 ###
RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
  end

  it 'head nil' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  # it 'appends node' do
  #   list = LinkedList.new
  #   list.append("doop")

  #   expect(list.append).to be_instance_of(Node)
  # end

  it 'lists list as Node' do
    list = LinkedList.new
    list.append("doop")

    expect(list).to be_a(LinkedList)
  end

  it 'doop appended as head' do
    list = LinkedList.new
    list.append("doop")
    list.head.data

    expect(list.head.data).to eq("doop")
  end

  it 'shows next_node as nil' do
    list = LinkedList.new
    list.append("doop")
    list.head.next_node

    expect(list.head.next_node).to eq(nil)
  end

  it 'counts the nodes method' do
    list = LinkedList.new
    list.append("doop")
    #list.append("foo")
    list.count

    expect(list.count).to eq(1)
    #expect(list.count).to eq(2)
  end

  it 'converts data to a string' do
    list = LinkedList.new
    list.append("doop")
    list.to_string

    expect(list.to_string).to eq("doop")
  end

### Iteration2 ###

it 'appends plop and returns a string' do
  list = LinkedList.new
  list.append("plop")
  list.to_string

  expect(list.to_string).to eq("plop")
end

it 'appends plop and suu and returns a string' do
  list = LinkedList.new
  list.append("plop")
  list.append("suu")
  list.to_string

  expect(list.to_string).to eq("plop suu")
end

# it 'prepends dop and returns a string' do
#   list = LinkedList.new
#   list.prepend("dop")
#   list.append("plop")
#   list.append("suu")
#   list.to_string

#   expect(list.to_string).to eq("dop plop suu")
# end

# it 'counts the nodes in the list'
#   list = LinkedList.new
#   list.prepend("dop")
#   list.append("plop")
#   list.append("suu")
#   list.count

#   expect(list.count).to eq(3)
end