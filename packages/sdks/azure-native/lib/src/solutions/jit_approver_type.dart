import 'package:pulumi/pulumi.dart' as pulumi;

/// The approver type.
enum JitApproverType implements pulumi.PulumiEnum<String> {
  valueUser("user"),
  valueGroup("group");

  const JitApproverType(this.wireValue);
  @override
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
