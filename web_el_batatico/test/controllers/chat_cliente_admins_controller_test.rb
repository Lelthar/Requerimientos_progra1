require 'test_helper'

class ChatClienteAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_cliente_admin = chat_cliente_admins(:one)
  end

  test "should get index" do
    get chat_cliente_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_cliente_admin_url
    assert_response :success
  end

  test "should create chat_cliente_admin" do
    assert_difference('ChatClienteAdmin.count') do
      post chat_cliente_admins_url, params: { chat_cliente_admin: { fecha: @chat_cliente_admin.fecha, mensaje: @chat_cliente_admin.mensaje, user_id: @chat_cliente_admin.user_id } }
    end

    assert_redirected_to chat_cliente_admin_url(ChatClienteAdmin.last)
  end

  test "should show chat_cliente_admin" do
    get chat_cliente_admin_url(@chat_cliente_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_cliente_admin_url(@chat_cliente_admin)
    assert_response :success
  end

  test "should update chat_cliente_admin" do
    patch chat_cliente_admin_url(@chat_cliente_admin), params: { chat_cliente_admin: { fecha: @chat_cliente_admin.fecha, mensaje: @chat_cliente_admin.mensaje, user_id: @chat_cliente_admin.user_id } }
    assert_redirected_to chat_cliente_admin_url(@chat_cliente_admin)
  end

  test "should destroy chat_cliente_admin" do
    assert_difference('ChatClienteAdmin.count', -1) do
      delete chat_cliente_admin_url(@chat_cliente_admin)
    end

    assert_redirected_to chat_cliente_admins_url
  end
end
