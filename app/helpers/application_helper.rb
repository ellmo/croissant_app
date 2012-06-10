module ApplicationHelper

  include SafeParams

  def backbone_data_hash
    data_hash = { :params => SafeParams.filter_params(params).to_json }
    data_hash.merge!({:debug => 'true'}) if Rails.env.development?
    data_hash
  end

end
