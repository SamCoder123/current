class User < ActiveRecord::Base
    
    has_attached_file :applog
    # Validate content type 可用的 内容类型  支持text
    validates_attachment_content_type :applog, content_type: ["text/plain"]
    
    # Explicitly do not validate
    do_not_validate_attachment_file_type :applog
    
end


