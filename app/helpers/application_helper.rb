module ApplicationHelper
  def flash_messages
    "".tap do |html|
      [:notice, :alert].each do |name|
        message = session.delete(name)
        locals = {
          :locals => {:message => message, :name => name}
        }
        template = %[<p class="message <%= name %>"><%= message %></p>]

        html << erb(template, locals) if message
      end
    end
  end
end
