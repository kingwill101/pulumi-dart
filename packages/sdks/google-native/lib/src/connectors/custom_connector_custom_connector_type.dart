/// Required. Type of the custom connector.
enum CustomConnectorCustomConnectorType {
  customConnectorTypeUnspecified("CUSTOM_CONNECTOR_TYPE_UNSPECIFIED"),
  openApi("OPEN_API"),
  proto("PROTO");

  const CustomConnectorCustomConnectorType(this.value);
  final String value;

  static CustomConnectorCustomConnectorType fromValue(String value) {
    for (final item in CustomConnectorCustomConnectorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConnectorCustomConnectorType value: $value');
  }
}

