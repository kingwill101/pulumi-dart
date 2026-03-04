/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1 {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1(
    this.wireValue,
  );
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1 fromValue(
    String value,
  ) {
    for (final item
        in InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerUpdatePolicyReplacementMethodComputeV1 value: $value',
    );
  }
}
