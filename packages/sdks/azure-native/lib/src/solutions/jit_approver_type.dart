/// The approver type.
enum JitApproverType {
  valueUser("user"),
  valueGroup("group");

  const JitApproverType(this.wireValue);
  final String wireValue;

  static JitApproverType fromValue(String value) {
    for (final item in JitApproverType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JitApproverType value: $value');
  }
}

