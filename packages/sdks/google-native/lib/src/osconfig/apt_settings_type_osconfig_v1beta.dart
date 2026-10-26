import 'package:pulumi/pulumi.dart' as pulumi;

/// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
enum AptSettingsTypeOsconfigV1beta implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  dist("DIST"),
  upgrade("UPGRADE");

  const AptSettingsTypeOsconfigV1beta(this.wireValue);
  @override
  final String wireValue;

  static AptSettingsTypeOsconfigV1beta fromValue(String value) {
    for (final item in AptSettingsTypeOsconfigV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AptSettingsTypeOsconfigV1beta value: $value');
  }
}
