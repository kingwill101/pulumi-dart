import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the Traffic Manager profile.
enum ProfileStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ProfileStatus(this.wireValue);
  @override
  final String wireValue;

  static ProfileStatus fromValue(String value) {
    for (final item in ProfileStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileStatus value: $value');
  }
}
