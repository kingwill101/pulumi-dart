/// The HTTP Status code to use for the redirect.
enum HttpRouteRedirectResponseCode {
  responseCodeUnspecified("RESPONSE_CODE_UNSPECIFIED"),
  movedPermanentlyDefault("MOVED_PERMANENTLY_DEFAULT"),
  found("FOUND"),
  seeOther("SEE_OTHER"),
  temporaryRedirect("TEMPORARY_REDIRECT"),
  permanentRedirect("PERMANENT_REDIRECT");

  const HttpRouteRedirectResponseCode(this.wireValue);
  final String wireValue;

  static HttpRouteRedirectResponseCode fromValue(String value) {
    for (final item in HttpRouteRedirectResponseCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRouteRedirectResponseCode value: $value');
  }
}
