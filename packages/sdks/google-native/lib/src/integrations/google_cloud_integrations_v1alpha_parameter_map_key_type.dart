/// Option to specify key type for all entries of the map. If provided then field types for all entries must conform to this.
enum GoogleCloudIntegrationsV1alphaParameterMapKeyType {
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

  const GoogleCloudIntegrationsV1alphaParameterMapKeyType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaParameterMapKeyType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaParameterMapKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaParameterMapKeyType value: $value');
  }
}
