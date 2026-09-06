import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the data masking policy.
enum DataMaskingState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataMaskingState(this.wireValue);
  @override
  final String wireValue;

  static DataMaskingState fromValue(String value) {
    for (final item in DataMaskingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingState value: $value');
  }
}
