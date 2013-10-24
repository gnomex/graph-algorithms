module Text
  class Parse
    TEXTREGEX = /[\w|\s]+/

    def self.load_file(filename)
      words = Array.new

      File.open(filename, "r").each_line do |line|
        line.gsub!(/\r\n?/, "\n") #Line break
        # line.gsub!(/\W/, " ")
        # line.downcase!
        # words.push(line.split(' '))
      end
      words.flatten
    end
  end
end
