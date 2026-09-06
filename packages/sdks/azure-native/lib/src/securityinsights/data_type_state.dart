import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe whether this data type connection is enabled or not.
enum DataTypeState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DataTypeState(this.wireValue);
  @override
  final String wireValue;

  static DataTypeState fromValue(String value) {
    for (final item in DataTypeState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataTypeState value: $value');
  }
}
