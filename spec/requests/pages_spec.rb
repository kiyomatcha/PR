require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "トップページ" do
    it "正常なレスポンスを返すこと" do
      get root_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end

  describe "サービス紹介ページ" do
    it "正常なレスポンスを返すこと" do
      get about_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end

  describe "よくある質問ページ" do
    it "正常なレスポンスを返すこと" do
      get help_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end

  describe "利用規約ページ" do
    it "正常なレスポンスを返すこと" do
      get terms_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end

  describe "プライバシーポリシーページ" do
    it "正常なレスポンスを返すこと" do
      get privacy_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end
end
