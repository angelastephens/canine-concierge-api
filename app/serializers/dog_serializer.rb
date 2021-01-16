class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :age, :sex
end
