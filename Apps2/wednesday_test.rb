require 'test/unit'
require_relative 'wednesday'

class HeroSelectionTest < Test::Unit::TestCase
  def test_first_six_hero_select
    hero = HeroSelection.new()
