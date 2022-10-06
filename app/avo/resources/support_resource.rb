class SupportResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :title, as: :text, required: true, placeholder: "Titre du site de support"
  field :illustration, as: :file, is_image: true, required: true
  field :body, as: :text,  required: true, placeholder: "Description de la platforme"
  field :link, as: :text, required: true, placeholder: "Lien vers la platforme de soutien"
  field :active, as: :boolean, required: true, default: false
  # add fields here
end
