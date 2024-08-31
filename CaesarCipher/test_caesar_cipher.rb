require 'minitest/autorun'
require_relative 'caesar_cipher'

class TestCaesarCipher < Minitest::Test
  def test_lowercase_shift
    assert_equal "bcd", caesar_cipher("abc", 1)
    assert_equal "def", caesar_cipher("abc", 3)
    assert_equal "zab", caesar_cipher("xyz", 2)
  end

  def test_uppercase_shift
    assert_equal "BCD", caesar_cipher("ABC", 1)
    assert_equal "DEF", caesar_cipher("ABC", 3)
    assert_equal "ZAB", caesar_cipher("XYZ", 2)
  end

  def test_mixed_case_shift
    assert_equal "Wklv lv d whvw", caesar_cipher("This is a test", 3)
  end

  def test_non_alphabetic_characters
    assert_equal "Uifsf!\"#%&", caesar_cipher("There!\"#%&", 1)
    assert_equal "What a string!", caesar_cipher("What a string!", 0)
  end

  def test_large_shift
    assert_equal "Cde", caesar_cipher("Abc", 28)  
  end
end
