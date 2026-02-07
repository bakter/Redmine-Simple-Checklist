require_relative 'lib/simple_checklist_hook'

Redmine::Plugin.register :redmine_simple_checklist do
  name 'Simple Checklist Plugin'
  author 'Levente Vass'
  description 'Modern, project-based checklist for Redmine 6.'
  version '1.1.0'
  url 'https://github.com/yourusername/redmine_simple_checklist'
  author_url 'https://www.leventevass.com'

  project_module :simple_checklist do
    permission :view_simple_checklist, { simple_checklists: [:create, :toggle, :destroy] }
  end
end

ActiveSupport.on_load(:active_record) do
  Issue.send(:has_many, :simple_checklists, dependent: :destroy)
end
