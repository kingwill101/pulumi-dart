/// Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
enum EvictionPolicyType {
  valueDelete("Delete"),
  valueDeallocate("Deallocate");

  const EvictionPolicyType(this.wireValue);
  final String wireValue;

  static EvictionPolicyType fromValue(String value) {
    for (final item in EvictionPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvictionPolicyType value: $value');
  }
}

