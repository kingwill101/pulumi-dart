import 'package:pulumi/pulumi.dart' as pulumi;

/// Role of the linked server.
enum ReplicationRole implements pulumi.PulumiEnum<String> {
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const ReplicationRole(this.wireValue);
  @override
  final String wireValue;

  static ReplicationRole fromValue(String value) {
    for (final item in ReplicationRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationRole value: $value');
  }
}
