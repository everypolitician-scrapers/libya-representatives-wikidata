#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new( 'Category:Libyan politicians', 'en').member_titles
fr = WikiData::Category.new( 'Catégorie:Personnalité politique libyenne', 'fr').member_titles
# TODO: make this work
# ar = WikiData::Category.new( 'مساعدة تصنيف:سياسيون ليبيون', 'ar').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en, fr: fr })
