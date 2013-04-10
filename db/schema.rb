# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130403164539) do

  create_table "devoluciones", :force => true do |t|
    t.integer  "prestamo_id"
    t.datetime "fecha_entrega"
    t.boolean  "nuevo",         :default => false
    t.boolean  "usado",         :default => false
    t.boolean  "danado",        :default => false
    t.string   "dano"
    t.string   "observaciones"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "laboratorios", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "materiales", :force => true do |t|
    t.string   "nombre"
    t.boolean  "disponible"
    t.text     "descripcion"
    t.string   "codigo"
    t.integer  "laboratorio_id"
    t.boolean  "nuevo",          :default => false
    t.boolean  "usado",          :default => false
    t.boolean  "danado",         :default => false
    t.text     "dano"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "prestamos", :force => true do |t|
    t.integer  "material_id"
    t.string   "num_control"
    t.string   "observaciones"
    t.datetime "fecha_prestamo"
    t.boolean  "nuevo",          :default => false
    t.boolean  "usado",          :default => false
    t.boolean  "danado",         :default => false
    t.string   "dano"
    t.integer  "laboratorio_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.boolean  "devuelto",       :default => false
  end

end
