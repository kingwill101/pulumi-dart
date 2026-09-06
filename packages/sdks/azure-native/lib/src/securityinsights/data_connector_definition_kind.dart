import 'package:pulumi/pulumi.dart' as pulumi;

/// The data connector kind
enum DataConnectorDefinitionKind implements pulumi.PulumiEnum<String> {
  valueCustomizable("Customizable");

  const DataConnectorDefinitionKind(this.wireValue);
  @override
  final String wireValue;

  static DataConnectorDefinitionKind fromValue(String value) {
    for (final item in DataConnectorDefinitionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectorDefinitionKind value: $value');
  }
}
