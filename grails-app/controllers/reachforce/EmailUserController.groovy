package reachforce

import org.springframework.dao.DataIntegrityViolationException

class EmailUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def emailUserService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [emailUserInstanceList: EmailUser.list(params), emailUserInstanceTotal: EmailUser.count()]
    }

    def create() {
        [emailUserInstance: new EmailUser(params)]
    }

    def save() {
        def emailUserInstance = new EmailUser(params)
        if (!emailUserInstance.save(flush: true)) {
            render(view: "create", model: [emailUserInstance: emailUserInstance])
            return
        }

        def confirm = emailUserService.confirmation(params)
        if(!confirm) {
            flash.message = message(code: 'Confirm object null', args: [message(code:  confirm.label, default: 'Confirm Obj.'),])
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), emailUserInstance.id])
        redirect(action: "show", id: emailUserInstance.id)
    }

    def show() {
        def emailUserInstance = EmailUser.get(params.id)
        if (!emailUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), params.id])
            redirect(action: "list")
            return
        }

        [emailUserInstance: emailUserInstance]
    }

    def edit() {
        def emailUserInstance = EmailUser.get(params.id)
        if (!emailUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), params.id])
            redirect(action: "list")
            return
        }

        [emailUserInstance: emailUserInstance]
    }

    def update() {
        def emailUserInstance = EmailUser.get(params.id)
        if (!emailUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (emailUserInstance.version > version) {
                emailUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'emailUser.label', default: 'EmailUser')] as Object[],
                          "Another user has updated this EmailUser while you were editing")
                render(view: "edit", model: [emailUserInstance: emailUserInstance])
                return
            }
        }

        emailUserInstance.properties = params

        if (!emailUserInstance.save(flush: true)) {
            render(view: "edit", model: [emailUserInstance: emailUserInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), emailUserInstance.id])
        redirect(action: "show", id: emailUserInstance.id)
    }

    def delete() {
        def emailUserInstance = EmailUser.get(params.id)
        if (!emailUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), params.id])
            redirect(action: "list")
            return
        }

        try {
            emailUserInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'emailUser.label', default: 'EmailUser'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
