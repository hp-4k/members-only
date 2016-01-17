require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  it { is_expected.to route(:get, '/').to(action: :home) }
end
