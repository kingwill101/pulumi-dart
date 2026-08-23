/// Required. The redirect status code.
enum DomainRedirectType {
  redirectTypeUnspecified("REDIRECT_TYPE_UNSPECIFIED"),
  movedPermanently("MOVED_PERMANENTLY");

  const DomainRedirectType(this.wireValue);
  final String wireValue;

  static DomainRedirectType fromValue(String value) {
    for (final item in DomainRedirectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainRedirectType value: $value');
  }
}
