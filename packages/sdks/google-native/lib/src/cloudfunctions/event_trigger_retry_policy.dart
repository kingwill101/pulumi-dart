import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
enum EventTriggerRetryPolicy implements pulumi.PulumiEnum<String> {
  retryPolicyUnspecified("RETRY_POLICY_UNSPECIFIED"),
  retryPolicyDoNotRetry("RETRY_POLICY_DO_NOT_RETRY"),
  retryPolicyRetry("RETRY_POLICY_RETRY");

  const EventTriggerRetryPolicy(this.wireValue);
  @override
  final String wireValue;

  static EventTriggerRetryPolicy fromValue(String value) {
    for (final item in EventTriggerRetryPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventTriggerRetryPolicy value: $value');
  }
}
