class DocumentsController < ApplicationController
  def index
    documents = Document.first(2)
    @document_one = documents[0] || Document.create
    @document_two = documents[1] || Document.create
  end

  def edit
    @document = Document.find(params[:id])
  end
end
