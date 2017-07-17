class HomeController < ApplicationController
  def index
  end

  def form
  	name = params[:contact_us][:name]
  	email = params[:contact_us][:email]
  	messsage = params[:contact_us][:messsage] rescue ""
  	ip = request.remote_ip

  	Contact.create(nome: name, email: email, comentario: messsage, ip: ip)
  	redirect_to root_path
  end

  def programadorgot
    
  end

  def programadorgotresult
    name = params[:got][:name] rescue ''
    email = params[:got][:email] rescue ''
    messsage = params[:got][:messsage] rescue ""
    ip = request.remote_ip

    Contact.create(nome: name, email: email, comentario: messsage, ip: ip)

    ban = 0
    jhon = 0
    tyrion = 0
    khaleesi = 0

    p1 = params[:got][:p1]
    ban      += 1 if p1 == 'ban'
    jhon     += 1 if p1 == 'jhon'
    tyrion   += 1 if p1 == 'tyrion'
    khaleesi += 1 if p1 == 'khaleesi'

    p2 = params[:got][:p2]
    ban      += 1 if p2 == 'ban'
    jhon     += 1 if p2 == 'jhon'
    tyrion   += 1 if p2 == 'tyrion'
    khaleesi += 1 if p2 == 'khaleesi'

    p3 = params[:got][:p3]
    ban      += 1 if p3 == 'ban'
    jhon     += 1 if p3 == 'jhon'
    tyrion   += 1 if p3 == 'tyrion'
    khaleesi += 1 if p3 == 'khaleesi'

    p4 = params[:got][:p4]
    ban      += 1 if p4 == 'ban'
    jhon     += 1 if p4 == 'jhon'
    tyrion   += 1 if p4 == 'tyrion'
    khaleesi += 1 if p4 == 'khaleesi'

    p5 = params[:got][:p5]
    ban      += 1 if p5 == 'ban'
    jhon     += 1 if p5 == 'jhon'
    tyrion   += 1 if p5 == 'tyrion'
    khaleesi += 1 if p5 == 'khaleesi'

    p6 = params[:got][:p6]
    ban      += 1 if p6 == 'ban'
    jhon     += 1 if p6 == 'jhon'
    tyrion   += 1 if p6 == 'tyrion'
    khaleesi += 1 if p6 == 'khaleesi'

    @result = 'ban' if ban >= jhon && ban >= tyrion && ban >= khaleesi
    @result = 'jhon' if jhon >= ban && jhon >= tyrion && jhon >= khaleesi
    @result = 'tyrion' if tyrion >= ban && tyrion >= jhon && tyrion >= khaleesi
    @result = 'khaleesi' if khaleesi >= ban && khaleesi >= jhon && khaleesi >= tyrion

    @result = 'all' unless @result.present?
    
  end
end
