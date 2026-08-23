/// The additional options.
enum AdditionalOptionsResourceTypeRegistration {
  protectedAsyncOperationPolling("ProtectedAsyncOperationPolling"),
  protectedAsyncOperationPollingAuditOnly("ProtectedAsyncOperationPollingAuditOnly");

  const AdditionalOptionsResourceTypeRegistration(this.wireValue);
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
