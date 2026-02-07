class SimpleChecklistHook < Redmine::Hook::ViewListener
  def view_issues_show_description_bottom(context={})
    return '' unless context[:project]&.module_enabled?(:simple_checklist)
    context[:controller].send(:render_to_string, partial: 'issues/simple_checklist', locals: context)
  end

  def view_issues_form_details_bottom(context={})
    return '' unless context[:project]&.module_enabled?(:simple_checklist)
    context[:controller].send(:render_to_string, partial: 'issues/simple_checklist', locals: context)
  end
end
