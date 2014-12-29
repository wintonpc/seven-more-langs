require "lunit"

function ends_in_3(num)
   return num % 10 == 3
end

function is_prime(n)
   if n < 2 then return false end
   for i = 2, n-1 do
      if n % i == 0 then
         return false
      end
   end
   return true
end

-- :'(   http://stackoverflow.com/questions/12372788/in-lua-how-to-get-the-tail-of-an-array-without-copying-it
function reduce(max, init, f)
   for i = 0, max do
      init = f(init, i)
   end
   return init
end

module("day1_tests", lunit.testcase, package.seeall)

-- run with `lunit day1.lua`

function test_ends_in_3()
   assert_false(ends_in_3(0))
   assert_true(ends_in_3(3))
   assert_true(ends_in_3(13))
   assert_false(ends_in_3(34))
end

function test_is_prime()
   assert_not_prime(1)
   assert_prime(2)
   assert_prime(3)
   assert_not_prime(4)
   assert_prime(5)
   assert_not_prime(6)
   assert_not_prime(25)
   assert_prime(29)
end

function assert_prime(n)
   assert_true(is_prime(n))
end

function assert_not_prime(n)
   assert_false(is_prime(n))
end

function test_reduce()
   add = function(a,b) return a + b end
   assert_equal(15, reduce(5, 0, add))
end
