require 'rails_helper'

RSpec.describe 'Category API' do
    let!(:category) { create_list(:category, 10) }
    before { get '/categories' }

    context 'when categories exists' do
        it 'returns status code 200' do
            expect(response).to have_http_status(200)
        end

        it 'returns all categories' do
            expect(json.size).to eq(10)
        end
    end
end