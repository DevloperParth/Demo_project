require 'rails_helper'

RSpec.describe Project, type: :model do

  describe 'validations' do
    describe 'it validates name' do
      it { is_expected.to validate_presence_of(:title) }
    end
  end

end