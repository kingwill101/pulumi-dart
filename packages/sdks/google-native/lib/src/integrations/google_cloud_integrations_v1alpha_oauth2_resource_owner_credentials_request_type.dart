/// Represent how to pass parameters to fetch access token
enum GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType {
  requestTypeUnspecified("REQUEST_TYPE_UNSPECIFIED"),
  requestBody("REQUEST_BODY"),
  queryParameters("QUERY_PARAMETERS"),
  encodedHeader("ENCODED_HEADER");

  const GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType value: $value');
  }
}

