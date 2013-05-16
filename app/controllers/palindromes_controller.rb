class PalindromesController < ApplicationController
  # GET /palindromes
  # GET /palindromes.json
  def index
    @palindromes = Palindrome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @palindromes }
    end
  end

  # GET /palindromes/1
  # GET /palindromes/1.json
  def show
    @palindrome = Palindrome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @palindrome }
    end
  end

  # GET /palindromes/new
  # GET /palindromes/new.json
  def new
    @palindrome = Palindrome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @palindrome }
    end
  end

  # GET /palindromes/1/edit
  def edit
    @palindrome = Palindrome.find(params[:id])
  end

  # POST /palindromes
  # POST /palindromes.json
  def create
    @palindrome = Palindrome.new(params[:palindrome])

    respond_to do |format|
      if @palindrome.save
        format.html { redirect_to @palindrome, notice: 'Palindrome was successfully created.' }
        format.json { render json: @palindrome, status: :created, location: @palindrome }
      else
        format.html { render action: "new" }
        format.json { render json: @palindrome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /palindromes/1
  # PUT /palindromes/1.json
  def update
    @palindrome = Palindrome.find(params[:id])

    respond_to do |format|
      if @palindrome.update_attributes(params[:palindrome])
        format.html { redirect_to @palindrome, notice: 'Palindrome was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @palindrome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palindromes/1
  # DELETE /palindromes/1.json
  def destroy
    @palindrome = Palindrome.find(params[:id])
    @palindrome.destroy

    respond_to do |format|
      format.html { redirect_to palindromes_url }
      format.json { head :no_content }
    end
  end
end
