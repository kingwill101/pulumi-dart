import 'package:pulumi/pulumi.dart' as pulumi;

/// Polarization. e.g. (RHCP, LHCP).
enum Polarization implements pulumi.PulumiEnum<String> {
  valueRHCP("RHCP"),
  valueLHCP("LHCP"),
  valueLinearVertical("linearVertical"),
  valueLinearHorizontal("linearHorizontal");

  const Polarization(this.wireValue);
  @override
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
