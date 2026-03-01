/// Option to specify value type for all entries of the map. If provided then field types for all entries must conform to this.
enum GoogleCloudIntegrationsV1alphaParameterMapValueType {
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

  const GoogleCloudIntegrationsV1alphaParameterMapValueType(this.value);
  final String value;

  static GoogleCloudIntegrationsV1alphaParameterMapValueType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaParameterMapValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaParameterMapValueType value: $value');
  }
}

