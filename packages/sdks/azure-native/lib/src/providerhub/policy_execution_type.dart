/// The policy execution type.
enum PolicyExecutionType {
  notSpecified("NotSpecified"),
  executePolicies("ExecutePolicies"),
  bypassPolicies("BypassPolicies"),
  expectPartialPutRequests("ExpectPartialPutRequests");

  const PolicyExecutionType(this.value);
  final String value;

  static PolicyExecutionType fromValue(String value) {
    for (final item in PolicyExecutionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyExecutionType value: $value');
  }
}

