# Tools for read file developers
class Tools
  READ = 'r'.freeze
  def initialize(file)
    @file       = file
    @developers = []
  end

  def load
    raise 'File does not exist!' unless file_exists?

    read_rows(open_read_file)
  end

  def total_rows
    `wc -l #{@file}`.split.first.to_i - 1
  end

  def devs
    @developers
  end

  private

  def read_rows(file)
    file.each_line do |row|
      @developers.push(row.strip)
    end
  end

  def open_read_file
    File.open(@file, READ)
  end

  def file_exists?
    File.exist?(@file)
  end
end