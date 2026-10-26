import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
enum EventTriggerRetryPolicyCloudfunctionsV2alpha implements pulumi.PulumiEnum<String> {
  retryPolicyUnspecified("RETRY_POLICY_UNSPECIFIED"),
  retryPolicyDoNotRetry("RETRY_POLICY_DO_NOT_RETRY"),
  retryPolicyRetry("RETRY_POLICY_RETRY");

  const EventTriggerRetryPolicyCloudfunctionsV2alpha(this.wireValue);
  @override
  final String wireValue;

  static EventTriggerRetryPolicyCloudfunctionsV2alpha fromValue(String value) {
    for (final item in EventTriggerRetryPolicyCloudfunctionsV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventTriggerRetryPolicyCloudfunctionsV2alpha value: $value');
  }
}
