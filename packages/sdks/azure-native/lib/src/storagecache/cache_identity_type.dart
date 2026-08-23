/// The type of identity used for the cache
enum CacheIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  valueNone("None");

  const CacheIdentityType(this.wireValue);
  final String wireValue;

  static CacheIdentityType fromValue(String value) {
    for (final item in CacheIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheIdentityType value: $value');
  }
}
