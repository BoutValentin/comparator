class ComparatorPostResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :title, as: :text, required: true, placeholder: "Titre de l'article"
  field :illustration, as: :file, is_image: true, required: true
  field :abstract, as: :textarea, required: true, placeholder: "Un résumé de la comparaison"
  field :body, as: :trix, required: true
  field :author, as: :text, required: true, placeholder: "Nom de l'auteur"
  # add fields here
end
