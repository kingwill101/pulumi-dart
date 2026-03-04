/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta(
    this.wireValue,
  );
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta value: $value',
    );
  }
}
