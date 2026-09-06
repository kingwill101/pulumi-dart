import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the owner the incident is assigned to.
enum OwnerType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueUser("User"),
  valueGroup("Group");

  const OwnerType(this.wireValue);
  @override
  final String wireValue;

  static OwnerType fromValue(String value) {
    for (final item in OwnerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnerType value: $value');
  }
}
