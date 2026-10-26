import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent how to pass parameters to fetch access token
enum GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType implements pulumi.PulumiEnum<String> {
  requestTypeUnspecified("REQUEST_TYPE_UNSPECIFIED"),
  requestBody("REQUEST_BODY"),
  queryParameters("QUERY_PARAMETERS"),
  encodedHeader("ENCODED_HEADER");

  const GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType value: $value');
  }
}
