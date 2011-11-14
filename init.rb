require 'redmine'

require 'site_feedback_application_hooks'

Redmine::Plugin.register :redmine_site_feedback do
  name 'Redmine Site Feedback plugin'
  author 'Akiko Takano'
  description 'Plugin to provide site-wide feedback tab for users to ease the process of accessing feedback forums, issue tracker & information.'
  version '0.0.1'
  requires_redmine :version_or_higher => '1.2.0'

  settings :partial => 'settings/redmine_site_feedback',
    :default => {
      'enable' => 'false',
      'hide_anonymous' => 'false',
      'hide_issue_show_page' => 'false',
      'feedback_url' => '',
      'feedback_description' => 'フィードバック受付用のフォーム（URL)を表示します'
    }
end
