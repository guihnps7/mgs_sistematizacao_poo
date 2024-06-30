class Api::V1::FuncionariosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[show create]
  before_action :authorize_request
  skip_before_action :authorize_request, only: %i[show create]


  @@funcionario = {}

  def create
    funcionario = {
      matricula: params[:matricula],
      nome: params[:nome],
      cpf: params[:cpf],
      informacao_medica: params[:informacao_medica],
      telefone: params[:telefone],
      email: params[:email]
    }

    if funcionario[:matricula] && funcionario[:nome] && funcionario[:informacao_medica] && funcionario[:telefone] && funcionario[:email]
      @@funcionario[funcionario[:matricula]] = funcionario
      render json: { message: 'Funcionário cadastrado com sucesso', funcionario: funcionario }, status: :created
    else
      render json: { error: 'Erro ao cadastrar funcionário' }, status: :unprocessable_entity
    end
  end

  def show
    funcionario = @@funcionario[params[:matricula]]

    if funcionario
      render json: funcionario
    else
      render json: { error: 'Funcionário não encontrado' }, status: :not_found
    end
  end

end
