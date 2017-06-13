require "pry"

class Hash
  def keys_of(arguments, *other_arguments)
    array = []
    self.each do |keys, values|
      if arguments == values
         array << keys
      end
      other_arguments.each do |args|
        if args == values
         array << keys
        end
      end
    end
    array
    binding.pry
  end
end
