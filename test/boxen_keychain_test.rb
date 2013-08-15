require "boxen/test"
require "boxen/keychain"

class BoxenKeychainTest < Boxen::Test
  def setup
    @keychain = Boxen::Keychain.new('test')
  end

  def test_get_token
    @keychain.expects(:get).with('GitHub API Token').returns('foobar')
    assert_equal 'foobar', @keychain.token
  end

  def test_set_token
    @keychain.expects(:set).with('GitHub API Token', 'foobar').returns('foobar')
    assert_equal 'foobar', @keychain.token=('foobar')
  end
end