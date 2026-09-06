import 'package:pulumi/pulumi.dart' as pulumi;

/// The source of the action to execute.
enum JobStepActionSource implements pulumi.PulumiEnum<String> {
  valueInline("Inline");

  const JobStepActionSource(this.wireValue);
  @override
  final String wireValue;

  static JobStepActionSource fromValue(String value) {
    for (final item in JobStepActionSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobStepActionSource value: $value');
  }
}
