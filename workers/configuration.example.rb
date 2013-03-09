class Configuration
  def self.keys
    {
      "aws_s3" => {
        "id"     => "myid",
        "secret" => "mysecret",
        "bucket" => "mybucket"
      }
    }
  end
end