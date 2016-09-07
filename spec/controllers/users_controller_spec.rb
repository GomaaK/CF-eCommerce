require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(first_name: 'Test', last_name: 'user', email: 'testUser@mail.com', password: '12345678') }
  let(:other_user) { User.create!(first_name: 'Ttest2', last_name: 'test2', email: 'test2@mail.com', password: '12345678') }

  describe 'GET #show' do
    context 'when user is logged in' do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, id: user.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end
      it "can\'t access other users show page" do
        get :show, id: other_user.id
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end

    context 'when user is not logged in' do
      it 'redirects to login' do
        get :show, id: user.id
        expect(response).to redirect_to(root_path)
      end
    end
  end

end