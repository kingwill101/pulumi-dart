/// Type of the parameter.
enum GoogleCloudIntegrationsV1alphaIntegrationParameterDataType {
  integrationParameterDataTypeUnspecified("INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED"),
  stringValue("STRING_VALUE"),
  intValue("INT_VALUE"),
  doubleValue("DOUBLE_VALUE"),
  booleanValue("BOOLEAN_VALUE"),
  stringArray("STRING_ARRAY"),
  intArray("INT_ARRAY"),
  doubleArray("DOUBLE_ARRAY"),
  booleanArray("BOOLEAN_ARRAY"),
  jsonValue("JSON_VALUE"),
  protoValue("PROTO_VALUE"),
  protoArray("PROTO_ARRAY");

  const GoogleCloudIntegrationsV1alphaIntegrationParameterDataType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaIntegrationParameterDataType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaIntegrationParameterDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaIntegrationParameterDataType value: $value');
  }
}
