class MyApp
  def call env
    [200, {"Content-Type" => "text/html"}, ["#{format(env)}"]]
  end

  def format env
    Hash[*env.sort.flatten(1)]
  end
end
