require 'rdoc/rdoc'
require 'hanna'
gem 'rdoc'
require 'rdoc/task'

class Hanna::Task < RDoc::Task
  # don't allow it
  undef :external=, :template=
  
  # Create the tasks defined by this task lib.
  def define
    options << '-f hanna'
    
    # inline source and UTF-8 are defaults:
    options << '--inline-source' unless options.include? '--inline-source' or options.include? '-S'
    options << '--charset=UTF-8' if options.grep(/^(--charset\b|-c\b)/).empty?
   
    super
    #desc "Build the HTML documentation"
    #task name
    
    #desc "Force a rebuild of the RDOC files"
    #task paste("re", name) => [paste("clobber_", name), name]

    #desc "Remove rdoc products" 
    #task paste("clobber_", name) do
      #rm_r rdoc_dir rescue nil
    #end

    #task :clobber => [paste("clobber_", name)]
      
    #directory @rdoc_dir
    #task name => [rdoc_target]
    #file rdoc_target => @rdoc_files + [Rake.application.rakefile] do
      #rm_r @rdoc_dir rescue nil
      #Hanna::require_rdoc
      #require 'rdoc/rdoc'
      
      #RDoc::RDoc.new.document(option_list + @rdoc_files)
    #end
    #return self
  end
end
