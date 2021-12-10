require 'rails_helper'

RSpec.describe "Pages", type: :system do
  describe "トップページ" do
    context "ページ全体" do
      before do
        visit root_path
      end

      it "PRの文字列が存在することを確認" do
        expect(page).to have_content 'PR'
      end

      it "正しいタイトルが表示されることを確認" do
        expect(page).to have_title full_title
      end
    end
  end

  describe "サービス紹介ページ" do
    before do
      visit about_path
    end
    it "サービスについての文字列が存在することを確認" do
      expect(page).to have_content 'サービスについて'
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title('サービスについて')
    end
  end

  describe "よくある質問ページ" do
    before do
      visit help_path
    end
    it "よくある質問の文字列が存在することを確認" do
      expect(page).to have_content 'よくある質問'
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title('よくある質問')
    end
  end

  describe "利用規約ページ" do
    before do
      visit terms_path
    end
    it "利用規約の文字列が存在することを確認" do
      expect(page).to have_content '利用規約'
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title('利用規約')
    end
  end

  describe "プライバシーポリシーページ" do
    before do
      visit privacy_path
    end
    it "プライバシーポリシーの文字列が存在することを確認" do
      expect(page).to have_content 'プライバシーポリシー'
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title('プライバシーポリシー')
    end
  end
end
