package businessexpose



import org.junit.*
import grails.test.mixin.*

@TestFor(BexposeUserController)
@Mock(BexposeUser)
class BexposeUserControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/bexposeUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.bexposeUserInstanceList.size() == 0
        assert model.bexposeUserInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.bexposeUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.bexposeUserInstance != null
        assert view == '/bexposeUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/bexposeUser/show/1'
        assert controller.flash.message != null
        assert BexposeUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/bexposeUser/list'


        populateValidParams(params)
        def bexposeUser = new BexposeUser(params)

        assert bexposeUser.save() != null

        params.id = bexposeUser.id

        def model = controller.show()

        assert model.bexposeUserInstance == bexposeUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/bexposeUser/list'


        populateValidParams(params)
        def bexposeUser = new BexposeUser(params)

        assert bexposeUser.save() != null

        params.id = bexposeUser.id

        def model = controller.edit()

        assert model.bexposeUserInstance == bexposeUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/bexposeUser/list'

        response.reset()


        populateValidParams(params)
        def bexposeUser = new BexposeUser(params)

        assert bexposeUser.save() != null

        // test invalid parameters in update
        params.id = bexposeUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/bexposeUser/edit"
        assert model.bexposeUserInstance != null

        bexposeUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/bexposeUser/show/$bexposeUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        bexposeUser.clearErrors()

        populateValidParams(params)
        params.id = bexposeUser.id
        params.version = -1
        controller.update()

        assert view == "/bexposeUser/edit"
        assert model.bexposeUserInstance != null
        assert model.bexposeUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/bexposeUser/list'

        response.reset()

        populateValidParams(params)
        def bexposeUser = new BexposeUser(params)

        assert bexposeUser.save() != null
        assert BexposeUser.count() == 1

        params.id = bexposeUser.id

        controller.delete()

        assert BexposeUser.count() == 0
        assert BexposeUser.get(bexposeUser.id) == null
        assert response.redirectedUrl == '/bexposeUser/list'
    }
}
