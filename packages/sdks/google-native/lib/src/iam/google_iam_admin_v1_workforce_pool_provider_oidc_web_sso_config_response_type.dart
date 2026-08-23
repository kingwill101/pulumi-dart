/// Required. The Response Type to request for in the OIDC Authorization Request for web sign-in. The `CODE` Response Type is recommended to avoid the Implicit Flow, for security reasons.
enum GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType {
  responseTypeUnspecified("RESPONSE_TYPE_UNSPECIFIED"),
  code("CODE"),
  idToken("ID_TOKEN");

  const GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType(this.wireValue);
  final String wireValue;

  static GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType fromValue(String value) {
    for (final item in GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfigResponseType value: $value');
  }
}
