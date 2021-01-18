class ServiceRequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :service_type, :pick_up_time, :pick_up_location, :dog_id
end
