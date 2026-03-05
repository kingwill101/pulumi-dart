/// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
enum GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod value: $value');
  }
}

