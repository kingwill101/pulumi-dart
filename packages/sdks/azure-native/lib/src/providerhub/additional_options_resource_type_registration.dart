/// The additional options.
enum AdditionalOptionsResourceTypeRegistration {
  protectedAsyncOperationPolling("ProtectedAsyncOperationPolling"),
  protectedAsyncOperationPollingAuditOnly("ProtectedAsyncOperationPollingAuditOnly");

  const AdditionalOptionsResourceTypeRegistration(this.value);
  final String value;

  static AdditionalOptionsResourceTypeRegistration fromValue(String value) {
    for (final item in AdditionalOptionsResourceTypeRegistration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdditionalOptionsResourceTypeRegistration value: $value');
  }
}

