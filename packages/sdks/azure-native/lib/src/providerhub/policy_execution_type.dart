import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy execution type.
enum PolicyExecutionType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  executePolicies("ExecutePolicies"),
  bypassPolicies("BypassPolicies"),
  expectPartialPutRequests("ExpectPartialPutRequests");

  const PolicyExecutionType(this.wireValue);
  @override
  final String wireValue;

  static PolicyExecutionType fromValue(String value) {
    for (final item in PolicyExecutionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyExecutionType value: $value');
  }
}
