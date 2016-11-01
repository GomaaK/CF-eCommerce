require 'rails_helper'


describe ProductsController, :type => :controller  do

	before do
		@product = FactoryGirl.create(:product)
	end

	describe "GET #index" do

		before do
			get :index
		end
		it "responds successfuly with HTTP 200 status code" do
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do
			expect(response).to render_template("index")
		end

		it "assigns all products as @products" do
			expect(assigns(:products)).to eq([@product])
		end
	end


	describe "GET #show" do
		before do
			get :show, params: {id: @product.id}
		end

		it "responds successfuly with HTTP 200 status code" do
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do
			expect(response).to render_template("show")
		end

		it "assigns the requested product as @product" do
			expect(assigns(:product)).to eq(@product)
		end
	end

	describe "GET #new" do
		before do
			get :new
		end

		it "responds successfuly with HTTP 200 status code" do
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do
			expect(response).to render_template("new")
		end

		it "assigns a new product as @product" do
			expect(assigns(:product)).to be_a_new(Product)

		end

	end

	describe "GET #edit" do
		before do
			get :edit, params: {id: @product.id}
		end

		it "responds successfuly with HTTP 200 status code" do
			expect(response).to have_http_status(200)
		end

		it "renders the index template" do
			expect(response).to render_template("edit")
		end

		it "assigns the requested product as @product" do
			expect(assigns(:product)).to eq(@product)
		end
	end 


	
end