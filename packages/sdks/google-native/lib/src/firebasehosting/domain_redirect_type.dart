import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The redirect status code.
enum DomainRedirectType implements pulumi.PulumiEnum<String> {
  redirectTypeUnspecified("REDIRECT_TYPE_UNSPECIFIED"),
  movedPermanently("MOVED_PERMANENTLY");

  const DomainRedirectType(this.wireValue);
  @override
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
