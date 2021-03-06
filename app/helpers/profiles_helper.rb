module ProfilesHelper

  def skills
    [ 
      [:childcaring, "Childcare"],
      [:writing, "Writer"],
      [:designing, "Designer"],
      [:mentoring, "Mentor"],
      [:outreach],
      [:macosx, "Mac OS X"],
      [:windows],
      [:linux]
    ]
  end

  def has_skills(user)
    skills.each do |(skill_symbol, _)|
      return true if user.profile[skill_symbol]
    end
    return false
  end

  def skill_title(skill)
    skill[1].blank? ? skill[0].to_s.titlecase : skill[1]
  end

  def skill_symbol(skill)
    skill[0]
  end
end