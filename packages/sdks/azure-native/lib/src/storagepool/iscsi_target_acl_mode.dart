import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode for Target connectivity.
enum IscsiTargetAclMode implements pulumi.PulumiEnum<String> {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const IscsiTargetAclMode(this.wireValue);
  @override
  final String wireValue;

  static IscsiTargetAclMode fromValue(String value) {
    for (final item in IscsiTargetAclMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IscsiTargetAclMode value: $value');
  }
}
