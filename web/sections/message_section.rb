# This class is example of section
class MessageSection < Howitzer::Web::Section
  me :xpath, '//aside[@id="msg-overlay"]/div[2]'

  element :contacts, '#ember548'
#  element :account, :xpath, ".//*[@id='metaMenu']//a[contains(., 'Account')]"
#  element :log_out, :xpath, ".//*[@id='metaMenu']//a[contains(., 'Log Out')]"

#  def logout
#    Howitzer::Log.info 'Contacts'
#    contacts.click
#  end
end
