/// The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
enum AppEngineHttpTargetHttpMethodCloudschedulerV1beta1 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const AppEngineHttpTargetHttpMethodCloudschedulerV1beta1(this.wireValue);
  final String wireValue;

  static AppEngineHttpTargetHttpMethodCloudschedulerV1beta1 fromValue(String value) {
    for (final item in AppEngineHttpTargetHttpMethodCloudschedulerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppEngineHttpTargetHttpMethodCloudschedulerV1beta1 value: $value');
  }
}

