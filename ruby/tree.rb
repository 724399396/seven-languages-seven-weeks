# -*- coding: utf-8 -*-
class Tree
    attr_accessor :children, :node_name
    
    def initialize(tree)
        @node_name = tree.keys.first
        @children = []
        tree[@node_name].each {|n,c| @children << Tree.new(n => c) }
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new(:granpa => {:father => {:child1 => {}, :child2 => {}}, :uncle => {:child3 => {}}})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
