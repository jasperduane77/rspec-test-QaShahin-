class Animal
    @name = nil
    @age  = nil
    
    def initialize(name, age)
        @name = name
        @age  = age
    end

    def getName
        @name
    end

    def setName(name)
        @name = name
    end

    def getAge
        @age
    end

    def setAge(age)
        @age = age    
    end

    
end