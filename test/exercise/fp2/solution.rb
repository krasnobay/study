module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for e in self
          yield e
        end
      end

      # Написать свою функцию my_map
      def my_map
        res = MyArray.new
        self.my_each { |e| res.push yield(e) }
        res
      end

      # Написать свою функцию my_compact
      def my_compact
        res = MyArray.new
        self.my_each { |e| res.push e unless e.nil? }
        res
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        self.my_each { |e| acc = acc ? yield(acc, e) : e }
        acc
      end
    end
  end
end
