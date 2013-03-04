module LinksHelper
  def time_ago(datetime)
    time_ago_in_words(datetime) + ' ago'
  end
end
