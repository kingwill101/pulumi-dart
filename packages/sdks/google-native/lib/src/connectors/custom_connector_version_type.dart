/// Required. Type of the customConnector.
enum CustomConnectorVersionType {
  customConnectorTypeUnspecified("CUSTOM_CONNECTOR_TYPE_UNSPECIFIED"),
  openApi("OPEN_API"),
  proto("PROTO");

  const CustomConnectorVersionType(this.wireValue);
  final String wireValue;

  static CustomConnectorVersionType fromValue(String value) {
    for (final item in CustomConnectorVersionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConnectorVersionType value: $value');
  }
}

