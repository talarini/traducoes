class TranslationsController < ApplicationController

  def new
    @translation = Translation.new
  end

  def create
    port = params[:translation][:portuguese]
    eng = params[:translation][:english]
    aut = params[:translation][:author]
    #Strong Parameters -> Rails Guides > Controllers

    t = Translation.new(portuguese: port, english: eng, author: aut)
    t.save

    redirect_to root_url
  end

  def show
    #id = params[:id]
    @translation = Translation.find(params[:id])
  end

  def edit
    @translation = Translation.find(params[:id])
  end

  def update
    port = params[:translation][:portuguese]
    eng = params[:translation][:english]
    aut = params[:translation][:author]

    @translation = Translation.find(params[:id])
    @translation.update(portuguese: port, english: eng, author: aut)

    redirect_to translation_path(@translation)
  end
end
