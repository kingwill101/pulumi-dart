/// Information about the connected appliance.
enum Provider {
  vMWare("VMWare"),
  hCI("HCI"),
  sCVMM("SCVMM");

  const Provider(this.wireValue);
  final String wireValue;

  static Provider fromValue(String value) {
    for (final item in Provider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Provider value: $value');
  }
}
