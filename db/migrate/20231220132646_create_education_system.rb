class CreateEducationSystem < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :major

      t.timestamps
    end

    create_table :instructors do |t|
      t.string :name
      t.string :department

      t.timestamps
    end

    create_table :courses do |t|
      t.string :title
      t.text :description
      t.belongs_to :instructor, foreign_key: true

      t.timestamps
    end

    create_table :course_modules do |t|
      t.string :title
      t.text :description
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end

    create_table :enrollments do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.date :enrollment_date
      t.string :status

      t.timestamps
    end

    create_table :grades do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.integer :grade
      t.text :feedback

      t.timestamps
    end

    create_table :feedbacks do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.text :content
      t.date :date

      t.timestamps
    end

    create_table :assignments do |t|
      t.belongs_to :course_module, foreign_key: true
      t.text :description
      t.date :due_date
      t.text :submission_guidelines

      t.timestamps
    end

    create_table :resources do |t|
      t.belongs_to :course_module, foreign_key: true
      t.string :resource_type
      t.string :link

      t.timestamps
    end

    create_table :attendances do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
