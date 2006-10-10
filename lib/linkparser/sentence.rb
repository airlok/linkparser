#!/usr/bin/ruby
# 
# Additional high-level functionality for LinkParser::Sentence objects.
# 
# == Synopsis
# 
#   
# 
# == Authors
# 
# * Michael Granger <ged@FaerieMUD.org>
# 
# == Copyright
#
# Copyright (c) 2006 The FaerieMUD Consortium. Some rights reserved.
# 
# This work is licensed under the Creative Commons Attribution License. To view
# a copy of this license, visit http://creativecommons.org/licenses/by/1.0/ or
# send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California
# 94305, USA.
# 
# == Version
#
#  $Id$
# 

require 'linkparser'


### Additional high-level functionality for LinkParser::Sentence objects.
class LinkParser::Sentence

	# SVN Revision
	SVNRev = %q$Rev$

	# SVN Id
	SVNId = %q$Id$


	######
	public
	######

	### Return a human-readable representation of the Sentence object.
	def inspect
		%{#<%s:0x%x "%s"/%d linkages/%d nulls>} % [
			self.class.name,
			self.object_id / 2,
			self.words.join(" "),
			self.num_linkages_found,
			self.null_count,
		]
	end


	### Return the Array of words in the sentence as tokenized by the
	### parser.
	def words
		(0...self.length).to_a.collect do |i|
			self.word( i )
		end
	end
	

end # class Sentence
