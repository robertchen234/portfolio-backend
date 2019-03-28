class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :teaser, :description, :year, :tech_stack, :demo_url, :git_url, :video_url, :image_url, :claps
end
