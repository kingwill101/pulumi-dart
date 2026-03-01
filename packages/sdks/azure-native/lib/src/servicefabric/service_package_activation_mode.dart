/// The activation Mode of the service package
enum ServicePackageActivationMode {
  sharedProcess("SharedProcess"),
  exclusiveProcess("ExclusiveProcess");

  const ServicePackageActivationMode(this.value);
  final String value;

  static ServicePackageActivationMode fromValue(String value) {
    for (final item in ServicePackageActivationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePackageActivationMode value: $value');
  }
}

