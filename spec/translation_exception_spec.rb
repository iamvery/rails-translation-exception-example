require 'rails_helper'

describe 'translation exception behavior' do
  include ActionView::Helpers

  it 'raises an exception when translation key cannot be found' do
    expect { t('blerg') }.to raise_error
  end

  it 'raises an exception in a view rendered with a missing translation key' do
    expect { visit page_path }.to raise_error
  end
end
