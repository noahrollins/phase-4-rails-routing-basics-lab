class StudentsController < ApplicationController
    def index
        students = Students.all
        render json: students
    end  

    def show_grades
        grades = Student.order(grade: :desc)
        render json: grades

    def highest_grade
        highest_grade = Student.order(grade: :desc).first
        render json: highest_grade
end
