import 'package:pulumi/pulumi.dart' as pulumi;

/// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
enum AptSettingsType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  dist("DIST"),
  upgrade("UPGRADE");

  const AptSettingsType(this.wireValue);
  @override
  final String wireValue;

  static AptSettingsType fromValue(String value) {
    for (final item in AptSettingsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AptSettingsType value: $value');
  }
}
