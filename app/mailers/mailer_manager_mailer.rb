class MailerManagerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer_manager_mailer.SendCommand.subject
  #
  def send_command(nomm, prenom, adresse, codepostal, ville, telephone, mail, payement, current_or)
    @nomm = nomm
    @prenom = prenom
    @adresse = adresse 
    @codepostal = codepostal
    @ville = ville
    @telephone = telephone
    @mail = mail
    @payement = payement

    @each_item = current_or.itemis
    @current_order = current_or

    mail to: "mattx08@live.fr", subject: "EatCrêpes : commande"
  end

  def send_client(nomm, prenom, adresse, codepostal, ville, telephone, mail, payement, current_or)
    @nomm = nomm
    @prenom = prenom
    @adresse = adresse 
    @codepostal = codepostal
    @ville = ville
    @telephone = telephone
    @mail = mail
    @payement = payement

    @each_item = current_or.itemis
    @current_order = current_or

    mail to: @mail, subject: "EatCrêpes : confirmation commande"
  end
end
