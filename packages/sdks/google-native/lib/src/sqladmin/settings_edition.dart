import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The edition of the instance.
enum SettingsEdition implements pulumi.PulumiEnum<String> {
  editionUnspecified("EDITION_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const SettingsEdition(this.wireValue);
  @override
  final String wireValue;

  static SettingsEdition fromValue(String value) {
    for (final item in SettingsEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsEdition value: $value');
  }
}
