require 'spec_helper'

describe 'ActionMailer::Base.register_interceptor' do
  it 'registers interceptor' do
    expect(ActionMailer::Base).to \
      receive(:register_interceptor).with(Premailer::Rails::Hook)
    load 'premailer/rails.rb'
  end

  it 'registers preview interceptor' do
    expect(ActionMailer::Base).to \
      receive(:register_preview_interceptor).with(Premailer::Rails::Hook)
    load 'premailer/rails.rb'
  end
end
