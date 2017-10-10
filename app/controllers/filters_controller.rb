require 'csv'


class FiltersController < ApplicationController
  def index
  end

  def create 
    csv_file = params[:csv_file]
    csv_file_path = csv_file.path

    result = 0
    CSV.foreach(csv_file_path) do |row|
      if row[2].to_f % 2 != 0 
        result += row[1].to_f
      end
    end

    render plain: '%.2f' % result
  end
end