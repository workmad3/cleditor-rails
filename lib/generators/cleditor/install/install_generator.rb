require 'rails/generators'

module Cleditor
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)

      desc "This generator installs CLEditor to Asset Pipeline"
      def add_assets
        insert_javascript("app/assets/javascripts/application.js")
        insert_javascript("app/assets/javascripts/application.js.coffee")

        insert_style("app/assets/stylesheets/application.css")
        insert_style("app/assets/stylesheets/application.css.scss")
      end

      private 

      def insert_style(file_name)
        if File.exist?(file_name)
          style_require_block = " *= require cleditor/cleditor\n"
          insert_into_file file_name, style_require_block, :after => "require_self\n"
        else
          if file_name == "app/assets/stylesheets/application.css"
            unless File.exist?("app/assets/stylesheets/application.css.scss")
              copy_file "application.css", "app/assets/stylesheets/application.css"
            end
          end
        end
      end

      def insert_javascript(file_name)
        if File.exist?(file_name)
          insert_into_file file_name, "//= require cleditor/cleditor\n//= require cleditor/jquery.cleditor.advancedtable\n", :after => "jquery_ujs\n"
        else
          if file_name == "app/assets/javascripts/application.js"
            unless File.exist?("app/assets/stylesheets/application.js.coffee")
              copy_file "application.js", "app/assets/javascripts/application.js"
            end
          end
        end
      end
    end
  end
end
