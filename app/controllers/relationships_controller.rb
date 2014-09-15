class RelationshipsController < ApplicationController

  def index
    @relationship = Relationship.all
  end

end
