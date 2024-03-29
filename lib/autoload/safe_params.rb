module SafeParams

  PARAM_NAMES = [
    "controller",
    "action"
  ]

  def filter_params(hash)
    unsafe_keys = hash.keys - PARAM_NAMES
    unsafe_keys.map {|key| hash.delete(key)}
    hash
  end

  module_function :filter_params

end