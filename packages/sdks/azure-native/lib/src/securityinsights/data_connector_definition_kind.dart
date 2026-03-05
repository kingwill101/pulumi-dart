/// The data connector kind
enum DataConnectorDefinitionKind {
  valueCustomizable("Customizable");

  const DataConnectorDefinitionKind(this.wireValue);
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

