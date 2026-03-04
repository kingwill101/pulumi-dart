/// Polarization. e.g. (RHCP, LHCP).
enum Polarization {
  valueRHCP("RHCP"),
  valueLHCP("LHCP"),
  valueLinearVertical("linearVertical"),
  valueLinearHorizontal("linearHorizontal");

  const Polarization(this.wireValue);
  final String wireValue;

  static Polarization fromValue(String value) {
    for (final item in Polarization.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Polarization value: $value');
  }
}
