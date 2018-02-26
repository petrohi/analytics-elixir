defmodule Segment.Analytics.Http do

  @base_url "https://api.segment.io/v1/"


  def post(url, body) do
    headers = [
      {"content-type", "application/json"},
      {"accept", "application/json"},
      {"authorization", "Basic " <> Base.encode64(Segment.write_key() <> ":")}
    ]
    MachineGun.post(
      @base_url <> url, 
      body, 
      headers)
  end
end
