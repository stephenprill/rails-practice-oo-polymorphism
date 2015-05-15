class PagesController < ApplicationController

  def index

    @events = []
    User.all.each do |user|
      @events << Event.new(user)
    end
    Company.all.each do |company|
      @events << Company.new(company)
    end
    Photo.all.each do |photo|
      @events << Photo.new(photo)
    end

    @events.sort_by(&:sort_by_date)
  end
end
