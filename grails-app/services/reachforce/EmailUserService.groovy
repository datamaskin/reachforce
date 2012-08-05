package reachforce

class EmailUserService {

    def mailService

    def serviceMethod() {

    }

    def confirmation(params) {
        mailService.sendMail {
            to String.valueOf(params.email)
            from String.valueOf(params.fromEmail)
            subject String.valueOf(params.subject)
            body String.valueOf(params.bodyText)
        }
    }
}
