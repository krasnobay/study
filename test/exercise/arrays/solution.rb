module Exercise
  module Arrays
    class << self
      def replace(array)
        m = max array
        array.map { |e| e > 0 ? m : e }
      end

      def search(array, query)
        bin_search array, query, 0, array.length - 1
      end

      def max array
        buf = array[0]
        array.each { |e| buf = e if e > buf }
        buf
      end

      def bin_search(array, query, left, right)
        return -1 unless left <= right
        i = (left + right) / 2
        if array[i] == query
          i
        elsif array[i] < query
          bin_search array, query, i + 1, right
        elsif array[i] > query
          bin_search array, query, left, i - 1
        end
      end
    end
  end
end
