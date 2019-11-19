class Hailing
   def the_action
    @water = "100"
    HailingModule::Action.test_action
   end

   def call_protected_function
    protected_action 
   end

   protected
    def protected_action
        another_protected_action
    end

    def another_protected_action
        puts 'A PROTECTED ACTION'
    end
end


module HailingModule
    class Action
        def self.test_action
            puts "Naniiiiiiii: #{@water}"
        end
    end
end

# The script goes here

hailing = Hailing.new
puts "Performing the method."
hailing.the_action
puts "-------------------"
hailing.call_protected_function