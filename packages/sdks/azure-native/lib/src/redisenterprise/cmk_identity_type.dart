/// Only userAssignedIdentity is supported in this API version; other types may be supported in the future
enum CmkIdentityType {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity");

  const CmkIdentityType(this.wireValue);
  final String wireValue;

  static CmkIdentityType fromValue(String value) {
    for (final item in CmkIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CmkIdentityType value: $value');
  }
}
