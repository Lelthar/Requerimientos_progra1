class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :nombre_usuario, presence: true, uniqueness: true
  validates :nombre, presence: true
  validates :apellidos, presence: true
  validates :direccion, presence: true
  before_create :set_estado_tipo_usuario
  has_many :chat_cliente_admin
  #before_action :authenticate_person!

  private

	def set_estado_tipo_usuario
		self.estado ||= "Activo" # el || revisa que si es nulo, asigna
		#self.tipo_cuenta = "Cliente"
	end

end
