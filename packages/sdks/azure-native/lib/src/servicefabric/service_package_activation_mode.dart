/// The activation Mode of the service package
enum ServicePackageActivationMode {
  sharedProcess("SharedProcess"),
  exclusiveProcess("ExclusiveProcess");

  const ServicePackageActivationMode(this.wireValue);
  final String wireValue;

  static ServicePackageActivationMode fromValue(String value) {
    for (final item in ServicePackageActivationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePackageActivationMode value: $value');
  }
}

