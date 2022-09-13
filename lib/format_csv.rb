require 'pry'

class FormatCsv
  def initialize(file)
    @file = file
  end

  def format
    new_csv = []
    formatted_titles = []
    File.open(@file, 'r') do |f|
      f.each_line do |line|
        line.split(',')[0..4].each do |data|
        data.chop! if data[-1] == "1"
        new_csv << data
        end
      end
    end
    new_csv = new_csv.reject.with_index{|v, i| i != 0 || i != 1 || i != 2 || i != 3 || i != 4 }
    new_csv << "appt_begin_data"
    new_csv << "appt_end_date" 
  end
end
