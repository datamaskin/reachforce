package reachforce

class EmailUser {

    String firstName
    String lastName
    String email
    String fromEmail
    String phone
    String subject
    String bodyText
    String userName
    String passWord
    String host
    String port

    static constraints = {
        firstName(nullable: false, maxSize: 200)
        lastName(nullable: false, maxSize: 200)
        email(email: true)
        fromEmail(email: true)
        phone(nullable: true, maxSize: 11)
        subject(nullable: false, maxSize: 50)
        bodyText(nullable: true, maxSize: 255)
        userName(nullable: false, maxSize: 250)
        passWord(nullable: false, maxSize: 250)
        host(nullable: false, maxSize: 250)
        port(nullable: false, maxSize: 3)
    }
}
