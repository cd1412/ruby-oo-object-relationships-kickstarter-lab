class Project

    attr_accessor :backers, :title 
  
    def initialize(title)
      @backers = []
      @title = title
    end
  
    def add_backer(backer)
      @backers << backer
      backer.backed_projects << self
      ProjectBacker.new(self, backer)
    end
  
end