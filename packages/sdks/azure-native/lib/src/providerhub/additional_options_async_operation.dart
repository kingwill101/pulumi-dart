/// The additional options.
enum AdditionalOptionsAsyncOperation {
  protectedAsyncOperationPolling("ProtectedAsyncOperationPolling"),
  protectedAsyncOperationPollingAuditOnly(
    "ProtectedAsyncOperationPollingAuditOnly",
  );

  const AdditionalOptionsAsyncOperation(this.wireValue);
  final String wireValue;

  static AdditionalOptionsAsyncOperation fromValue(String value) {
    for (final item in AdditionalOptionsAsyncOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AdditionalOptionsAsyncOperation value: $value',
    );
  }
}
