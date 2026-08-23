/// The content type header to use for the check. The following configurations result in errors: 1. Content type is specified in both the headers field and the content_type field. 2. Request method is GET and content_type is not TYPE_UNSPECIFIED 3. Request method is POST and content_type is TYPE_UNSPECIFIED. 4. Request method is POST and a "Content-Type" header is provided via headers field. The content_type field should be used instead.
enum HttpCheckContentType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  urlEncoded("URL_ENCODED"),
  userProvided("USER_PROVIDED");

  const HttpCheckContentType(this.wireValue);
  final String wireValue;

  static HttpCheckContentType fromValue(String value) {
    for (final item in HttpCheckContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpCheckContentType value: $value');
  }
}
