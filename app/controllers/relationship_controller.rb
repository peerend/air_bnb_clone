class RelationshipController < ApplicationController

  def index
    @relationship = Relationship.all
  end

end
