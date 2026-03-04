/// The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
enum ChannelCredentialsChannelCredentialType {
  certificates("CERTIFICATES"),
  gceVm("GCE_VM"),
  invalid("INVALID");

  const ChannelCredentialsChannelCredentialType(this.wireValue);
  final String wireValue;

  static ChannelCredentialsChannelCredentialType fromValue(String value) {
    for (final item in ChannelCredentialsChannelCredentialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ChannelCredentialsChannelCredentialType value: $value',
    );
  }
}
