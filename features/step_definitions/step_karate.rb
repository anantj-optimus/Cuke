Given /^I navigate to Google$/ do
#@browser.goto 'http://www.youtube.com/results?search_query=grey+anatomy+season+9+episode+1&oq=grey+anatomy+season+9+&gs_l=youtube.3.0.0l10.251567.259334.0.261213.11.10.1.0.0.0.735.4850.0j1j0j2j3j2j2.10.0...0.0...1ac.1.11.youtube.XzErzUjjKz0'
#@browser.goto 'http://www.youtube.com/watch?v=orKR0DETeLw'
@browser.goto "https://accounts.google.com/ServiceLogin?passive=true&uilel=3&hl=en_US&continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26feature%3Dsign_in_button%26hl%3Den_US%26next%3D%252F%26nomobiletemp%3D1&service=youtube"
end


When /^I enter into the search field "(./*)"$/ do |pass|
on lib do |page|
page.email_element.set pass
end

Then /^the text abc should be present$/ do 
passwdField = @browser.text_field(:id,'Passwd').set("123@123@123")
loginButton = @browser.button(:id, /signIn/ ).click
sleep(5)
end

And /^I enter andy into the search field$/ do
@browser.goto "http://www.youtube.com/watch?v=STiuApqpluI"
end

And /^enter xyz in search field$/ do
searchField  = @browser.text_field(:id,'masthead-search-term').set('grey anatomy season 9 episode 1')
searchButton = @browser.button(:id,'search-btn' ).click
sleep(10)
end

And /^I click on the video$/ do
clickField = @browser.link(:text,"Mark Sloan Dies - Grey's Anatomy Season 9 Premiere").click
sleep(5)
end

And /^I enter comment$/ do
#sleep(5)

commentField  = @browser.text_field(:id,'').send_keys :enter
commentField  = @browser.text_field(:id,'').set('this is a best rain video i saw')
commentField  = @browser.button(:xpath,".//*[@id='comments-view']/div/form/p[1]/button").click
#commentButton = @browser.frame(:class,'comments-post-buttons needs-focus').button(:class,'yt-uix-button yt-uix-button-default').click
sleep(5)
end

And /^I click thumbs up$/ do

#@browser.span(:text,"Ann Braud")
#@browser.span(:text,"Ann Braud").button(:title,"Vote Up")
#frame12 = @browser.link(:text,"Ann Braud").hover
#@frame12.button(:title,"Vote Up").click
#@browser.frame(:id,'all-comments').button(:title,"Vote Up").click

sleep(5)
end


