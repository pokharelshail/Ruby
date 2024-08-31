require "minitest/autorun"
require_relative "substring_count"

class TestCaesarCipher < Minitest::Test
  def test_all_zero_counts
    expected_answer = {"and" => 0, "buck" => 0, "cat" => 0}
    assert_equal expected_answer, substring_count("bat bucn caj paj", ["and", "buck", "cat"])
  end

  def test_some_substrings_found
    expected_answer = {"han" => 3, "su" => 1, "ma" => 1, "ba" => 2, "muah" => 0}
    assert_equal expected_answer, substring_count("wa wa wa han b b ba ba suu han han ma bbb", ["han", "su", "ma", "ba", "muah"])
  end

  def test_case_insensitivity
    expected_answer = {"han" => 3, "su" => 1, "Ma" => 1, "Ba" => 2, "MUaH" => 0}
    assert_equal expected_answer, substring_count("wa wa wa HAN b b ba BA suu han han MA bbb", ["han", "su", "Ma", "Ba", "MUaH"])
  end

  def test_overlapping_substrings
    expected_answer = {"aa" => 3, "aaa" => 2, "a" => 6}
    assert_equal expected_answer, substring_count("aaaaaa", ["aa", "aaa", "a"])
  end

  def test_empty_string
    expected_answer = {"and" => 0, "buck" => 0, "cat" => 0}
    assert_equal expected_answer, substring_count("", ["and", "buck", "cat"])
  end

  def test_empty_list_of_substrings
    expected_answer = {}
    assert_equal expected_answer, substring_count("bat bucn caj paj", [])
  end
end