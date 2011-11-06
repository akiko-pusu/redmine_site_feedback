class SiteFeedbackApplicationHooks < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :partial => 'site_feedback/html_header'
  render_on :view_layouts_base_body_bottom, :partial => 'site_feedback/body_bottom'
end

