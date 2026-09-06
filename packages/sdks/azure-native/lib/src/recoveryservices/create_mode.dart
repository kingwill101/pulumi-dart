import 'package:pulumi/pulumi.dart' as pulumi;

/// Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
enum CreateMode implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueDefault("Default"),
  valueRecover("Recover");

  const CreateMode(this.wireValue);
  @override
  final String wireValue;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}
