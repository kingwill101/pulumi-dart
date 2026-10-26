import 'package:pulumi/pulumi.dart' as pulumi;

enum EnterpriseCrmEventbusStatsDimensionsRetryAttempt implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  final_("FINAL"),
  retryable("RETRYABLE"),
  canceled("CANCELED");

  const EnterpriseCrmEventbusStatsDimensionsRetryAttempt(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmEventbusStatsDimensionsRetryAttempt fromValue(String value) {
    for (final item in EnterpriseCrmEventbusStatsDimensionsRetryAttempt.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusStatsDimensionsRetryAttempt value: $value');
  }
}
