class Event

  def initialize(model)
    @model = model
  end

  def content(view)
    if @model.is_a?(User)
      view.render 'pages/user', user: @model
    elsif @model.is_a?(Company)
      view.render 'pages/company', user: @model
    elsif @model.is_a?(Photo)
      view.render 'pages/photo', user: @model
  end
end

def sort_by_date
end
end 
