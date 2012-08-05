package reachforce



import org.junit.*
import grails.test.mixin.*

@TestFor(EmailUserController)
@Mock(EmailUser)
class EmailUserControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/emailUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.emailUserInstanceList.size() == 0
        assert model.emailUserInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.emailUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.emailUserInstance != null
        assert view == '/emailUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/emailUser/show/1'
        assert controller.flash.message != null
        assert EmailUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/emailUser/list'


        populateValidParams(params)
        def emailUser = new EmailUser(params)

        assert emailUser.save() != null

        params.id = emailUser.id

        def model = controller.show()

        assert model.emailUserInstance == emailUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/emailUser/list'


        populateValidParams(params)
        def emailUser = new EmailUser(params)

        assert emailUser.save() != null

        params.id = emailUser.id

        def model = controller.edit()

        assert model.emailUserInstance == emailUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/emailUser/list'

        response.reset()


        populateValidParams(params)
        def emailUser = new EmailUser(params)

        assert emailUser.save() != null

        // test invalid parameters in update
        params.id = emailUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/emailUser/edit"
        assert model.emailUserInstance != null

        emailUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/emailUser/show/$emailUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        emailUser.clearErrors()

        populateValidParams(params)
        params.id = emailUser.id
        params.version = -1
        controller.update()

        assert view == "/emailUser/edit"
        assert model.emailUserInstance != null
        assert model.emailUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/emailUser/list'

        response.reset()

        populateValidParams(params)
        def emailUser = new EmailUser(params)

        assert emailUser.save() != null
        assert EmailUser.count() == 1

        params.id = emailUser.id

        controller.delete()

        assert EmailUser.count() == 0
        assert EmailUser.get(emailUser.id) == null
        assert response.redirectedUrl == '/emailUser/list'
    }
}
