module ApplicationHelper
  def full_title(title=" ")
    title.nil? ? "PTScholars" : title

  end

  def site_name
    "PTScholars"
  end

  def site_url
    if Rails.env.production?
      "http://www.ptscholars.com/"
    else
      "http://localhost:3000"
    end
  end

    def meta_author
      "Abi Balogun"
    end

    def meta_description
      "Resources for Physical Therapist and students of physical therapy"
    end

    def meta_keywords
      "Physical Therapist"
    end

    #returns the full title on a per page basis
    def full_title(page_title)
      if page_title.empty?
        site_name
      else
        #{page_title} | #{site_name}
      end
    end

end
