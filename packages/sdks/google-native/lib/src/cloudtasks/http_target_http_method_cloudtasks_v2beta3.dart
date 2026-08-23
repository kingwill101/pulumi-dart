/// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
enum HttpTargetHttpMethodCloudtasksV2beta3 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethodCloudtasksV2beta3(this.wireValue);
  final String wireValue;

  static HttpTargetHttpMethodCloudtasksV2beta3 fromValue(String value) {
    for (final item in HttpTargetHttpMethodCloudtasksV2beta3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethodCloudtasksV2beta3 value: $value');
  }
}
