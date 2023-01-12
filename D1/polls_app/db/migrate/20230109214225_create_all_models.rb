class CreateAllModels < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true

      t.timestamps
    end

    create_table :polls do |t|
      t.string :title
      
      # this reference is a belongs_to
      t.references :user, foreign_key: true

      t.timestamps
    end

    create_table :questions do |t|
    
      t.text :body

      # this reference is a has_many
      t.references :poll, foreign_key: true

      t.timestamps
    end

    create_table :answer_choices do |t|
      t.text :body
      
      t.references :question, foreign_key: true

      t.timestamps
    end

    create_table :responses do |t|
      t.references :answer_choice, foreign_key: true

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
