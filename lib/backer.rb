class Backer

    attr_accessor :backed_projects, :name
    def initialize(name)
      @backed_projects = []
      @name = name
    end
  
    def back_project(project)
      @backed_projects << project
      project.backers << self
      ProjectBacker.new(project, self)
    end
  
end