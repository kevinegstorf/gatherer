require 'rails_helper'

describe ProjectsController, type: :controller do
  describe 'POST create' do
    it 'creates a project' do
      post :create, project: { name: 'Runway', tasks: 'Startsomething:2' }

      expect(response).to redirect_to(projects_path)
      expect(assigns(:action).project.name).to eq('Runway')
    end
  end
end
