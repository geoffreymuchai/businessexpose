package businessexpose

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

class BexposeUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [bexposeUserInstanceList: BexposeUser.list(params), bexposeUserInstanceTotal: BexposeUser.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        [bexposeUserInstance: new BexposeUser(params)]
    }

    @Secured(['ROLE_ADMIN'])
    def save() {
        def bexposeUserInstance = new BexposeUser(params)
        if (!bexposeUserInstance.save(flush: true)) {
            render(view: "create", model: [bexposeUserInstance: bexposeUserInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), bexposeUserInstance.id])
        redirect(action: "show", id: bexposeUserInstance.id)
    }

    @Secured(['ROLE_ADMIN'])
    def show() {
        def bexposeUserInstance = BexposeUser.get(params.id)
        if (!bexposeUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), params.id])
            redirect(action: "list")
            return
        }

        [bexposeUserInstance: bexposeUserInstance]
    }

    @Secured(['ROLE_ADMIN'])
    def edit() {
        def bexposeUserInstance = BexposeUser.get(params.id)
        if (!bexposeUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), params.id])
            redirect(action: "list")
            return
        }

        [bexposeUserInstance: bexposeUserInstance]
    }

    def update() {
        def bexposeUserInstance = BexposeUser.get(params.id)
        if (!bexposeUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (bexposeUserInstance.version > version) {
                bexposeUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'bexposeUser.label', default: 'BexposeUser')] as Object[],
                          "Another user has updated this BexposeUser while you were editing")
                render(view: "edit", model: [bexposeUserInstance: bexposeUserInstance])
                return
            }
        }

        bexposeUserInstance.properties = params

        if (!bexposeUserInstance.save(flush: true)) {
            render(view: "edit", model: [bexposeUserInstance: bexposeUserInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), bexposeUserInstance.id])
        redirect(action: "show", id: bexposeUserInstance.id)
    }

    @Secured(['ROLE_ADMIN'])
    def delete() {
        def bexposeUserInstance = BexposeUser.get(params.id)
        if (!bexposeUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), params.id])
            redirect(action: "list")
            return
        }

        try {
            bexposeUserInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bexposeUser.label', default: 'BexposeUser'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}