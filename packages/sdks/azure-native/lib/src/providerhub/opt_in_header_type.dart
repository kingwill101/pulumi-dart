/// The opt in headers.
enum OptInHeaderType {
  notSpecified("NotSpecified"),
  signedUserToken("SignedUserToken"),
  clientGroupMembership("ClientGroupMembership"),
  signedAuxiliaryTokens("SignedAuxiliaryTokens"),
  unboundedClientGroupMembership("UnboundedClientGroupMembership"),
  privateLinkId("PrivateLinkId"),
  privateLinkResourceId("PrivateLinkResourceId"),
  managementGroupAncestorsEncoded("ManagementGroupAncestorsEncoded"),
  privateLinkVnetTrafficTag("PrivateLinkVnetTrafficTag"),
  resourceGroupLocation("ResourceGroupLocation"),
  clientPrincipalNameEncoded("ClientPrincipalNameEncoded"),
  mSIResourceIdEncoded("MSIResourceIdEncoded");

  const OptInHeaderType(this.wireValue);
  final String wireValue;

  static OptInHeaderType fromValue(String value) {
    for (final item in OptInHeaderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptInHeaderType value: $value');
  }
}
