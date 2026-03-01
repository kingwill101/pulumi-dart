/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethod {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethod(this.value);
  final String value;

  static InstanceGroupManagerUpdatePolicyReplacementMethod fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyReplacementMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyReplacementMethod value: $value');
  }
}

