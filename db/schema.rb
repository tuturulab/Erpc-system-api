# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_01_002515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Area", force: :cascade do |t|
    t.string "nombreArea"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "Empresa_id"
    t.index ["Empresa_id"], name: "index_Area_on_Empresa_id"
  end

  create_table "Categoria", force: :cascade do |t|
    t.string "nombreCategoria"
    t.bigint "proveedor_id"
    t.index ["proveedor_id"], name: "index_Categoria_on_proveedor_id"
  end

  create_table "Cliente", force: :cascade do |t|
    t.string "nombreCliente"
    t.integer "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "Empresa_id"
    t.index ["Empresa_id"], name: "index_Cliente_on_Empresa_id"
  end

  create_table "Empleado", force: :cascade do |t|
    t.string "nombreEmpleado"
    t.decimal "salario", precision: 8, scale: 4
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "fechaContrato"
    t.bigint "Rol_id"
    t.index ["Rol_id"], name: "index_Empleado_on_Rol_id"
  end

  create_table "Empresa", force: :cascade do |t|
    t.string "nombreEmpresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "EmpresaProducto", force: :cascade do |t|
    t.bigint "Empresa_id"
    t.bigint "Producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Empresa_id"], name: "index_EmpresaProducto_on_Empresa_id"
    t.index ["Producto_id"], name: "index_EmpresaProducto_on_Producto_id"
  end

  create_table "Pago", force: :cascade do |t|
    t.decimal "cuota", precision: 4, scale: 3
    t.string "plazo"
    t.bigint "Venta_id"
    t.index ["Venta_id"], name: "index_Pago_on_Venta_id"
  end

  create_table "Producto", force: :cascade do |t|
    t.string "nombreProducto"
    t.integer "stock"
    t.decimal "precio", precision: 4, scale: 3
    t.bigint "Categoria_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Categoria_id"], name: "index_Producto_on_Categoria_id"
  end

  create_table "Rol", force: :cascade do |t|
    t.string "nombreRol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "Area_id"
    t.index ["Area_id"], name: "index_Rol_on_Area_id"
  end

  create_table "Venta", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "Cliente_id"
    t.index ["Cliente_id"], name: "index_Venta_on_Cliente_id"
  end

  create_table "VentaProducto", force: :cascade do |t|
    t.bigint "Producto_id"
    t.bigint "Venta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Producto_id"], name: "index_VentaProducto_on_Producto_id"
    t.index ["Venta_id"], name: "index_VentaProducto_on_Venta_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "description", limit: 255
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "proveedor", force: :cascade do |t|
    t.string "nombreProveedor"
    t.string "lugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", limit: 15
    t.string "description", limit: 255
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_roles_on_company_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
