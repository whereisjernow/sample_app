require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	describe "home page" do
		
		it "should have h1 content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => "Sample App")
		end

		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
		end

		it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end

	end

	describe "help page" do
		
		it "should have h1 content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => "Help")
		end

		it "should have title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} | Help")
		end

	end

	describe "about page" do

		it "should have h1 content 'About'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => "About")
		end

		it "should have title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title} | About")
		end

	end

	describe "contact page" do

		it "should have title 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{base_title} | Contact")
		end

	end

end