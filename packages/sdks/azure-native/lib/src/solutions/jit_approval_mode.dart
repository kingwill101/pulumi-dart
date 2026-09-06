import 'package:pulumi/pulumi.dart' as pulumi;

/// JIT approval mode.
enum JitApprovalMode implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueAutoApprove("AutoApprove"),
  valueManualApprove("ManualApprove");

  const JitApprovalMode(this.wireValue);
  @override
  final String wireValue;

  static JitApprovalMode fromValue(String value) {
    for (final item in JitApprovalMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JitApprovalMode value: $value');
  }
}
