#############################################################
#                      PREREQUISITES                        #
#############################################################

Given 'there is connections page' do
  HomePage.open
  HomePage.on do
    login_form('postmaster@sandbox768af69706e34c53bedd31dc58a43b68.mailgun.org',
             'yepl_user1')
  end
  Connections.open
end

Given 'there is messaging page' do
  HomePage.open
  HomePage.on do
    login_form('postmaster@sandbox999af69706e34c53bedd31dc58a43b68.mailgun.org',
             'yepl_user2')
  end
  Messaging.open
end

Given 'there is main page' do
  HomePage.open
  HomePage.on do
    login_form('postmaster@sandbox999af69706e34c53bedd31dc58a43b68.mailgun.org',
             'yepl_user2')
  end
end

####################################
#              ACTIONS             #
####################################

When 'I click Send message to the right of the user name' do
  Connections.on do
    click_send_message
  end
end

When 'I send message via message form' do
  Connections.on do
    send_message("test_message")
  end
end

When 'I select sender in left sidebar' do
  Messaging.on do
    select_sender
  end
end

When 'I click on triple dot button' do
  HomePage.on do
    advertisement_iframe do |frame|
      frame.open_complaint_window
    end
  end
end

####################################
#              CHECKS              #
####################################

Then 'connections page is open' do
  expect(Connections).to be_displayed
end

Then 'pop up message form should be opened' do
  Connections.on { is_expected.to have_message_frame_element }
end

Then 'confirmation pop up with sending status should be appeared' do
  Connections.on { is_expected.to have_confirmation_message_element }
end

Then 'message should be appeared' do
  Messaging.on { is_expected.to have_message_text_element }
end

Then 'the advertisement should be presented in top of page' do
  HomePage.on { is_expected.to have_advertisement_iframe }
end

Then 'complaint window should be appeared' do
  HomePage.on { is_expected.to have_complaint_window_element }
end
