import 'package:pulumi/pulumi.dart' as pulumi;

/// Public Certificate Location
enum PublicCertificateLocation implements pulumi.PulumiEnum<String> {
  valueCurrentUserMy("CurrentUserMy"),
  valueLocalMachineMy("LocalMachineMy"),
  valueUnknown("Unknown");

  const PublicCertificateLocation(this.wireValue);
  @override
  final String wireValue;

  static PublicCertificateLocation fromValue(String value) {
    for (final item in PublicCertificateLocation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicCertificateLocation value: $value');
  }
}
