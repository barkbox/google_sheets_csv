module GoogleSheetsCsv
  module Sheet
    def self.foreach(filename, options={}) 
    end

    def self.open(*args)
      # find the +options+ Hash
      options = if args.last.is_a? Hash then args.pop else Hash.new end
      # default to a binary open mode
      args << "rb" if args.size == 1
      # wrap a File opened with the remaining +args+
      csv     = new(File.open(*args), options)

      # handle blocks like Ruby's open(), not like the CSV library
      if block_given?
        begin
          yield csv
        ensure
          csv.close
        end
      else
        csv
      end
    end
    def << (row_data)
    end
  end
end


class GoogleDrive::Sheet
  include GoogleSheetsCsv
end

