require 'csv'


class FiltersController < ApplicationController
  def index
  end

  def create 
    csv_file = params[:csv_file]
    csv_file_path = csv_file.path

    result = 0
    compare = 0
    i = 0

    CSV.foreach(csv_file_path) do |row|
    	i += 1
    end
  	arraySize = i
    array = Array.new(arraySize)
    i = 0

    CSV.foreach(csv_file_path) do |row|
    	array[i] = row[0].to_f
    	i += 1
    end

    i = 0
    j = 0

    while i <= arraySize do
    	while j < 30 do
    		result += array[j]
    		j += 1
    	end
    	i += 1
    end
  
    render plain: '%.2f' % result
  end
end