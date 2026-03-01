/// Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
enum EvictionPolicyType {
  valueDelete("Delete"),
  valueDeallocate("Deallocate");

  const EvictionPolicyType(this.value);
  final String value;

  static EvictionPolicyType fromValue(String value) {
    for (final item in EvictionPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvictionPolicyType value: $value');
  }
}

