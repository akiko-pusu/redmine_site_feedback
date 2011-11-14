class SiteFeedbackApplicationHooks < Redmine::Hook::ViewListener
  def view_layouts_base_body_bottom(context = { })

    return '' unless Setting.plugin_redmine_site_feedback['enable']
    return '' unless SiteFeedback.activate_tab?(User.current)
    if context[:controller].class.name == 'IssuesController' and \
      context[:controller].action_name != 'index' and \
      Setting.plugin_redmine_site_feedback['hide_issue_show_page'] == "true"
      return ''
    end

    # show feedback tab icon
    img_src = image_path('feedback.png', :plugin=>'redmine_site_feedback')
    title = Setting.plugin_redmine_site_feedback['feedback_description']

    return "
<img src=\"#{img_src}\" width=\"100\" height=\"20\"
  title=\"#{title}\" alt=\"feedback\" id=\"feedback\"/>
"

  end

  render_on :view_layouts_base_html_head, :partial => 'site_feedback/html_header'
end
