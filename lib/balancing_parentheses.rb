require_relative './stack'
require 'byebug'

def balancing_parentheses(string)
    stack = Stack.new
    string.chars.each do |c|
        stack.push(c)
    end
    # byebug
    missing_parenthesis = 0
    if stack.search("(") == -1 || stack.search(")") == -1
        stack.size
    elsif stack.peek == "(" && stack.peek_first == ")"
        missing_parenthesis += 2
    elsif stack.peek == ")" && stack.peek_first != "("
        missing_parenthesis += 1
    elsif stack.peek_first == "(" && stack.peek != ")"
        missing_parenthesis += 1
    elsif stack.peek == ")" && stack.peek_first == "("
        # byebug
        stack.pop
        stack.shift
        stack.show.each do |c|
            if c == ")"
                missing_parenthesis += 1 unless stack.search("(") != -1
            elsif c == "("
                missing_parenthesis += 1 unless stack.search(")") != -1
            end
        end 
        missing_parenthesis
    end
end


# your code here
