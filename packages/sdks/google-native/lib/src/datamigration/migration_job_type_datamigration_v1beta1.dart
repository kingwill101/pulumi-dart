import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The migration job type.
enum MigrationJobTypeDatamigrationV1beta1 implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  oneTime("ONE_TIME"),
  continuous("CONTINUOUS");

  const MigrationJobTypeDatamigrationV1beta1(this.wireValue);
  @override
  final String wireValue;

  static MigrationJobTypeDatamigrationV1beta1 fromValue(String value) {
    for (final item in MigrationJobTypeDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MigrationJobTypeDatamigrationV1beta1 value: $value');
  }
}
