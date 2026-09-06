import 'package:pulumi/pulumi.dart' as pulumi;

/// The additional options.
enum AdditionalOptionsResourceTypeRegistration implements pulumi.PulumiEnum<String> {
  protectedAsyncOperationPolling("ProtectedAsyncOperationPolling"),
  protectedAsyncOperationPollingAuditOnly("ProtectedAsyncOperationPollingAuditOnly");

  const AdditionalOptionsResourceTypeRegistration(this.wireValue);
  @override
  final String wireValue;

  static AdditionalOptionsResourceTypeRegistration fromValue(String value) {
    for (final item in AdditionalOptionsResourceTypeRegistration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalOptionsResourceTypeRegistration value: $value');
  }
}
