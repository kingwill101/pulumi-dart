import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Type of the custom connector.
enum CustomConnectorCustomConnectorType implements pulumi.PulumiEnum<String> {
  customConnectorTypeUnspecified("CUSTOM_CONNECTOR_TYPE_UNSPECIFIED"),
  openApi("OPEN_API"),
  proto("PROTO");

  const CustomConnectorCustomConnectorType(this.wireValue);
  @override
  final String wireValue;

  static CustomConnectorCustomConnectorType fromValue(String value) {
    for (final item in CustomConnectorCustomConnectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConnectorCustomConnectorType value: $value');
  }
}
