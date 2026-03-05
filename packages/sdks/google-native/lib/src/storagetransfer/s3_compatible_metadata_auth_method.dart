/// Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
enum S3CompatibleMetadataAuthMethod {
  authMethodUnspecified("AUTH_METHOD_UNSPECIFIED"),
  authMethodAwsSignatureV4("AUTH_METHOD_AWS_SIGNATURE_V4"),
  authMethodAwsSignatureV2("AUTH_METHOD_AWS_SIGNATURE_V2");

  const S3CompatibleMetadataAuthMethod(this.wireValue);
  final String wireValue;

  static S3CompatibleMetadataAuthMethod fromValue(String value) {
    for (final item in S3CompatibleMetadataAuthMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown S3CompatibleMetadataAuthMethod value: $value');
  }
}

