require File.dirname(__FILE__) + '/test_helper.rb'

class TestGtin < Test::Unit::TestCase

  def setup
  end

  def test_checksum
    assert_equal '1', '760100036875'.checksum
    assert_equal '2', '760100070540'.checksum
    assert_equal '7', '760100011937'.checksum
    assert_equal '7', '760100018037'.checksum
    assert_equal '6', '760100017297'.checksum
    assert_equal '6', '760100006691'.checksum
    assert_equal '4', '760100047889'.checksum
    assert_equal '7', '760100000229'.checksum
    assert_equal '0', '760100046503'.checksum
  end

  def test_valid_checksum
    assert '7601000368751'.valid_checksum?
    assert '7601000705402'.valid_checksum?
    assert '7601000119377'.valid_checksum?
    assert '7601000180377'.valid_checksum?
    assert '7601000172976'.valid_checksum?
    assert '7601000066916'.valid_checksum?
    assert '7601000478894'.valid_checksum?
    assert '7601000002297'.valid_checksum?
    assert '7601000465030'.valid_checksum?
  end
end