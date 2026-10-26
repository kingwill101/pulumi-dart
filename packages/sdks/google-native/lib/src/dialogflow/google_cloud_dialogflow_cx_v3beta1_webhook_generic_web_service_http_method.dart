import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
enum GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod implements pulumi.PulumiEnum<String> {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod value: $value');
  }
}
