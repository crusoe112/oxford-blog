module DeviseHelper
	def devise_error_messages!
		return "" if resource.errors.empty?
		messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
		html = <<-HTML
			<div class="row">
				<div class="col-md-6">
					<div class="alert alert-danger box1">
					  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					  <strong>#{messages}</strong>
					</div>
				</div>
			</div>
		HTML
		html.html_safe
	end

end