module StoriesHelper
  def make_story
  	template = params[:empty_template]
  	noun = params[:story]["noun"]
  	noun2 = params[:story]["noun2"]
  	noun3 = params[:story]["noun3"]
    verb = params[:story]["verb"]
    adjective = params[:story]["adjective"]
    adjective2 = params[:story]["adjective2"]
    proper_noun = params[:story]["proper_noun"]
    verb_future_tense = params[:story]["verb_future_tense"]
    verb_past_tense = params[:story]["verb_past_tense"]
 
  	template.gsub!( "1", noun) if noun != nil
    template.gsub!( "2", noun2) if noun2 != nil
    template.gsub!( "3", noun3) if noun3 != nil
    template.gsub!( "4", verb) if verb != nil
    template.gsub!( "5", adjective ) if adjective != nil
    template.gsub!( "6", adjective2 ) if adjective2 != nil
    template.gsub!( "7", proper_noun ) if proper_noun != nil
    template.gsub!( "8", verb_future_tense ) if verb_future_tense != nil
    template.gsub!( "9", verb_past_tense ) if verb_past_tense != nil
    return template
  end
end
