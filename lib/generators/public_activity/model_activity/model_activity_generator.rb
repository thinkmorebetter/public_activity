require 'generators/public_activity'
require 'rails/generators/active_record'

module PublicActivity
  module Generators
    # ModelActivity generator that creates activity model file from template
    class ModelActivityGenerator < ActiveRecord::Generators::Base
      extend Base

      argument :name, :type => :string, :default => 'model_activity'
      # Create model in project's folder
      def generate_files
        copy_file 'model_activity.rb', "app/models/#{name}.rb"
      end
    end
  end
end
