class Contact < ApplicationRecord
	#Associations
	belongs_to :kind, optional:false
	has_many :phones 
	has_one :address

	#através do accepts nested attributes for é possivel aceitar parametros de outras models e 
	#cadastrar tudo de uma só vez. 

	accepts_nested_attributes_for :phones, allow_destroy: true
	accepts_nested_attributes_for :address, update_only: true

	# def as_json(options={})
	# 	h = super(options)
	# 	h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
	# 	h
	# end

	# def author
	# 	"Gabriel"
	# end

	# def kind_description
	# 	self.kind.description
	# end

	# def as_json(options={})
	# 	super(
	# 		root: true,
	# 		methods: [:kind_description, :author], 
	# 		#include: { kind: { only: :description }} --> Nested Attributes 
	# 		)
	# end
end
	