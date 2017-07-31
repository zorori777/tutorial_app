require 'rails_helper'

describe StaticPagesController do
  describe  'GET #home' do
    subject{ get :home }

    it 'homeアクションがgetして正常に動作するか' do
      expect(subject).to be_success
    end

    it "ステータスコードが200で返ってくる" do
      expect(subject.status).to eq 200
    end

    it "homeアクションに対応したviewを返すか" do
      get :home
      expect(subject).to render_template :home
    end
  end

  describe 'GET #help' do
    subject { get :help }

    it 'helpアクションがgetして正常に動作するか' do
      expect(subject).to be_success
    end

    it 'ステータスコードが200で返ってくる' do
      expect(subject.status).to eq 200
    end

    it 'helpアクションに対応したviewを返す' do
      get :help
      expect(subject).to render_template :help
    end
  end

  describe 'GET #about' do
    subject{ get :about }

    it 'aboutアクションがgetして正常に動作するか' do
      expect(subject).to be_success
    end

    it 'ステータスコードが200で返ってくる' do
      expect(subject.status).to eq 200
    end

    it "aboutアクションが対応したviewを返す" do
      get :about
      expect(subject).to render_template :about
    end
  end
end
