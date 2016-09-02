class DanielHomePageController < ApplicationController
   def helloworld
        @message = "This is Daniel Anderson's Homepage"
      	@linkedin = "https://www.linkedin.com/in/danieldananderson"
    end
    
    def pdf
        pdf_filename = File.join(Rails.root, "tmp/danielandersonresume.pdf")
        send_file(pdf_filename, :filename => "your_documet.pdf", :disposition => 'inline', :type => "application/pdf")
    end
end
