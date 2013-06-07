helpers do
  def errors
    @errors = session.delete(:errors)
  end
end
