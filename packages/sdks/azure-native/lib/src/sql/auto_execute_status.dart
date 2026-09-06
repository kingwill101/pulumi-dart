import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
enum AutoExecuteStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueDefault("Default");

  const AutoExecuteStatus(this.wireValue);
  @override
  final String wireValue;

  static AutoExecuteStatus fromValue(String value) {
    for (final item in AutoExecuteStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoExecuteStatus value: $value');
  }
}
