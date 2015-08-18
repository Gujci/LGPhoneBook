Pod::Spec.new do |s|

    s.name         = "LGPhoneBook"
    s.version      = "1.0.0"
    s.source       = { :git => "https://github.com/Gujci/LGPhoneBook.git", :branch => "master", :tag => 'v1.0.0' }
    
    s.public_header_files = 'LGPhoneBook/LGPhoneBook.{h,m}', 'LGPhoneBook/PhoneBookContact.{h,m}'
    s.source_files = 'LGPhoneBook/LGPhoneBook.h', 'LGPhoneBook/PhoneBookContact.h'

end
