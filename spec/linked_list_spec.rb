require 'pry'
require './lib/linked_list'
require './lib/node'

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
    list.count

    expect(list.count).to eq(1)
  end

  it 'converts data to a string' do
    list = LinkedList.new
    list.append("doop")
    list.to_string

    expect(list.to_string).to eq("doop")
  end

end