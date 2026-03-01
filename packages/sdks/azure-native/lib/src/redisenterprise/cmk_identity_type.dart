/// Only userAssignedIdentity is supported in this API version; other types may be supported in the future
enum CmkIdentityType {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity");

  const CmkIdentityType(this.value);
  final String value;

  static CmkIdentityType fromValue(String value) {
    for (final item in CmkIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CmkIdentityType value: $value');
  }
}

