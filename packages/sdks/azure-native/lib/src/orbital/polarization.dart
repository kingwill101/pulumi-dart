/// Polarization. e.g. (RHCP, LHCP).
enum Polarization {
  valueRHCP("RHCP"),
  valueLHCP("LHCP"),
  valueLinearVertical("linearVertical"),
  valueLinearHorizontal("linearHorizontal");

  const Polarization(this.value);
  final String value;

  static Polarization fromValue(String value) {
    for (final item in Polarization.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Polarization value: $value');
  }
}

