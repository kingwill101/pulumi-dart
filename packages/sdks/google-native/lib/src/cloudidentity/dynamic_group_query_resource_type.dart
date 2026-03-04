/// Resource type for the Dynamic Group Query
enum DynamicGroupQueryResourceType {
  resourceTypeUnspecified("RESOURCE_TYPE_UNSPECIFIED"),
  user("USER");

  const DynamicGroupQueryResourceType(this.wireValue);
  final String wireValue;

  static DynamicGroupQueryResourceType fromValue(String value) {
    for (final item in DynamicGroupQueryResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicGroupQueryResourceType value: $value');
  }
}
