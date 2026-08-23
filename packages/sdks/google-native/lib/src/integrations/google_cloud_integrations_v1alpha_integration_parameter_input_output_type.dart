/// Specifies the input/output type for the parameter.
enum GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType {
  inOutTypeUnspecified("IN_OUT_TYPE_UNSPECIFIED"),
  in_("IN"),
  out("OUT"),
  inOut("IN_OUT");

  const GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaIntegrationParameterInputOutputType value: $value');
  }
}
