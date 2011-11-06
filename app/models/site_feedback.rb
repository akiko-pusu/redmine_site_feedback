class SiteFeedback 
  unloadable
  def SiteFeedback.activate_tab?(user)
    if SiteFeedback.hide_anonymous? == false
      return true
    end
    return false if user.anonymous? == true
    return true
  end
  

  def SiteFeedback.hide_anonymous?
    return false unless Setting.plugin_redmine_site_feedback['hide_anonymous']
    return false if Setting.plugin_redmine_site_feedback['hide_anonymous'] == ""
    return true
  end

  def SiteFeedback.enable_feedback?
    return false unless Setting.plugin_redmine_site_feedback['enable']
    return false if Setting.plugin_redmine_site_feedback['enable'] == ""
    return true
  end
end
