#!/usr/bin/tclsh

puts "Hello World!" ;
puts -nonewline "Hello World"
puts "!!!"

set a 5
puts $a

set str "Hello Five"
puts $str

set "name surname" "Pedro Silva"
puts ${name surname}

upvar 0 a b;
puts $b
