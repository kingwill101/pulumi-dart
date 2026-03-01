/// The additional options.
enum AdditionalOptionsAsyncOperation {
  protectedAsyncOperationPolling("ProtectedAsyncOperationPolling"),
  protectedAsyncOperationPollingAuditOnly("ProtectedAsyncOperationPollingAuditOnly");

  const AdditionalOptionsAsyncOperation(this.value);
  final String value;

  static AdditionalOptionsAsyncOperation fromValue(String value) {
    for (final item in AdditionalOptionsAsyncOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalOptionsAsyncOperation value: $value');
  }
}

