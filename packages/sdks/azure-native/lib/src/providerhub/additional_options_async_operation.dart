import 'package:pulumi/pulumi.dart' as pulumi;

/// The additional options.
enum AdditionalOptionsAsyncOperation implements pulumi.PulumiEnum<String> {
  protectedAsyncOperationPolling("ProtectedAsyncOperationPolling"),
  protectedAsyncOperationPollingAuditOnly("ProtectedAsyncOperationPollingAuditOnly");

  const AdditionalOptionsAsyncOperation(this.wireValue);
  @override
  final String wireValue;

  static AdditionalOptionsAsyncOperation fromValue(String value) {
    for (final item in AdditionalOptionsAsyncOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalOptionsAsyncOperation value: $value');
  }
}
