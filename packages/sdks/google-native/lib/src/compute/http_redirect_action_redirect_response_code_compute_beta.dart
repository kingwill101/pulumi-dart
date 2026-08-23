/// The HTTP Status code to use for this RedirectAction. Supported values are: - MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301. - FOUND, which corresponds to 302. - SEE_OTHER which corresponds to 303. - TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method is retained. - PERMANENT_REDIRECT, which corresponds to 308. In this case, the request method is retained.
enum HttpRedirectActionRedirectResponseCodeComputeBeta {
  found("FOUND"),
  movedPermanentlyDefault("MOVED_PERMANENTLY_DEFAULT"),
  permanentRedirect("PERMANENT_REDIRECT"),
  seeOther("SEE_OTHER"),
  temporaryRedirect("TEMPORARY_REDIRECT");

  const HttpRedirectActionRedirectResponseCodeComputeBeta(this.wireValue);
  final String wireValue;

  static HttpRedirectActionRedirectResponseCodeComputeBeta fromValue(String value) {
    for (final item in HttpRedirectActionRedirectResponseCodeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRedirectActionRedirectResponseCodeComputeBeta value: $value');
  }
}
