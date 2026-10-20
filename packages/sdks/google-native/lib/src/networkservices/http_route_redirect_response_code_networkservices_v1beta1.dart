import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP Status code to use for the redirect.
enum HttpRouteRedirectResponseCodeNetworkservicesV1beta1 implements pulumi.PulumiEnum<String> {
  responseCodeUnspecified("RESPONSE_CODE_UNSPECIFIED"),
  movedPermanentlyDefault("MOVED_PERMANENTLY_DEFAULT"),
  found("FOUND"),
  seeOther("SEE_OTHER"),
  temporaryRedirect("TEMPORARY_REDIRECT"),
  permanentRedirect("PERMANENT_REDIRECT");

  const HttpRouteRedirectResponseCodeNetworkservicesV1beta1(this.wireValue);
  @override
  final String wireValue;

  static HttpRouteRedirectResponseCodeNetworkservicesV1beta1 fromValue(String value) {
    for (final item in HttpRouteRedirectResponseCodeNetworkservicesV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRouteRedirectResponseCodeNetworkservicesV1beta1 value: $value');
  }
}
