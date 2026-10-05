import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The purpose of the key.
enum WorkforcePoolKeyUse implements pulumi.PulumiEnum<String> {
  keyUseUnspecified("KEY_USE_UNSPECIFIED"),
  encryption("ENCRYPTION");

  const WorkforcePoolKeyUse(this.wireValue);
  @override
  final String wireValue;

  static WorkforcePoolKeyUse fromValue(String value) {
    for (final item in WorkforcePoolKeyUse.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkforcePoolKeyUse value: $value');
  }
}
