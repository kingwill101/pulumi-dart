import 'package:pulumi/pulumi.dart' as pulumi;

/// The output destination type.
enum JobStepOutputType implements pulumi.PulumiEnum<String> {
  valueSqlDatabase("SqlDatabase");

  const JobStepOutputType(this.wireValue);
  @override
  final String wireValue;

  static JobStepOutputType fromValue(String value) {
    for (final item in JobStepOutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepOutputType value: $value');
  }
}
