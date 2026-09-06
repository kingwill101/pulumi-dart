import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of action being executed by the job step.
enum JobStepActionType implements pulumi.PulumiEnum<String> {
  valueTSql("TSql");

  const JobStepActionType(this.wireValue);
  @override
  final String wireValue;

  static JobStepActionType fromValue(String value) {
    for (final item in JobStepActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepActionType value: $value');
  }
}
