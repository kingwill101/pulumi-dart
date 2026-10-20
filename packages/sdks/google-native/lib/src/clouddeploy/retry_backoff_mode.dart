import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
enum RetryBackoffMode implements pulumi.PulumiEnum<String> {
  backoffModeUnspecified("BACKOFF_MODE_UNSPECIFIED"),
  backoffModeLinear("BACKOFF_MODE_LINEAR"),
  backoffModeExponential("BACKOFF_MODE_EXPONENTIAL");

  const RetryBackoffMode(this.wireValue);
  @override
  final String wireValue;

  static RetryBackoffMode fromValue(String value) {
    for (final item in RetryBackoffMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetryBackoffMode value: $value');
  }
}
