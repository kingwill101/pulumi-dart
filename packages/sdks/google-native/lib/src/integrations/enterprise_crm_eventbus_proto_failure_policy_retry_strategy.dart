import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines what happens to the task upon failure.
enum EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  ignore("IGNORE"),
  none("NONE"),
  fatal("FATAL"),
  fixedInterval("FIXED_INTERVAL"),
  linearBackoff("LINEAR_BACKOFF"),
  exponentialBackoff("EXPONENTIAL_BACKOFF"),
  restartWorkflowWithBackoff("RESTART_WORKFLOW_WITH_BACKOFF");

  const EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy value: $value');
  }
}
