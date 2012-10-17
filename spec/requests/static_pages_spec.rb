require 'spec_helper'

describe "Static Pages" do

  subject{ page }

   let(:base_title) {'Ruby on Rails Tutorial Sample App |'}

  shared_examples_for "all static pages" do

    it { should have_selector('h1', text: "#{header}") }
    it { should have_selector('title', text: full_title("#{page_title}")) }

  end

  describe "Home page" do

    let(:header){ 'Sample App' }
    let(:page_title) {''}
    before{ visit root_path }

    it_should_behave_like "all static pages"
  end

  describe "Help Page" do

    let(:header) {'Help'}
    let(:page_title){ 'Help' }
    before{ visit help_path }

    it_should_behave_like "all static pages"
  end

  describe "About Page" do

    let(:header) {'About Us'}
    let(:page_title) { 'About' }
    before{ visit about_path }

    it_should_behave_like "all static pages"
  end

  describe "Contact Page" do

    let(:header) { 'Contact Page' }
    let(:page_title) { 'Contact' }
    before{ visit contact_path}

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title( 'About Us' )
    click_link "Help"
    page.should have_selector 'title', text: full_title( 'Help' )
    click_link "Contact"
    page.should have_selector 'title', text: full_title( 'Contact' )
    click_link "Home"
    click_link "Sign Up now!"
    page.should have_selector 'title', text: full_title( 'Sign up' )
  end
end
