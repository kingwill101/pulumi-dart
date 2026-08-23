/// The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
enum CallCredentialsCallCredentialType {
  fromPlugin("FROM_PLUGIN"),
  gceVm("GCE_VM"),
  invalid("INVALID");

  const CallCredentialsCallCredentialType(this.wireValue);
  final String wireValue;

  static CallCredentialsCallCredentialType fromValue(String value) {
    for (final item in CallCredentialsCallCredentialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CallCredentialsCallCredentialType value: $value');
  }
}
