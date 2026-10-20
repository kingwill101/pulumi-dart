import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The migration job type.
enum MigrationJobType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  oneTime("ONE_TIME"),
  continuous("CONTINUOUS");

  const MigrationJobType(this.wireValue);
  @override
  final String wireValue;

  static MigrationJobType fromValue(String value) {
    for (final item in MigrationJobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobType value: $value');
  }
}
