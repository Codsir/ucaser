# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posters = [{:content => 'What is the homework of this class?', :label => 'study', :release_date => '25-Nov-2017',  :user_id => 'fuxinjiang'},
    	  {:title => 'who want to play football?', :label => 'sports', :release_date => '26-Oct-2017', :user_id => 'tiger zhang'},
    	  {:title => 'what is deedline of the homework', :label => 'study', :release_date => '21-Jul-1989', :user_id => 'champion Zhang'},
  	 ]

posters.each do |poster|
  Poster.create!(poster)
end