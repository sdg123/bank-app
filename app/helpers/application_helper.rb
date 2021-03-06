module ApplicationHelper
	
	def full_title(page_title = '')
		base_title = "Bank App"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	def deposit_type
		return @type[:deposit]
	end

	def withdraw_type
		puts @type[:withdraw]
		return @type[:withdraw]
	end

	def transfer_type
		return @type[:transfer]
	end

	def borrow_type
		return @type[:borrow]
	end	

	def transaction_name(value)
		return @type_name[value]
	end

	def approved_status
		return @status[:approved]
	end

	def declined_status
		return @status[:declined]
	end

	def pending_status
		return @status[:pending]
	end

	def cancelled_status
		return @status[:cancelled]
	end

	def status_name(value)
		return @status_name[value]
	end
	
	def account_status_name value
		return @account_status_name[value]
	end
end
