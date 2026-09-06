import 'package:pulumi/pulumi.dart' as pulumi;

/// The Geo for CIDR advertising. Should be an Geo code.
enum Geo implements pulumi.PulumiEnum<String> {
  valueGLOBAL("GLOBAL"),
  valueAFRI("AFRI"),
  valueAPAC("APAC"),
  valueEURO("EURO"),
  valueLATAM("LATAM"),
  valueNAM("NAM"),
  valueME("ME"),
  valueOCEANIA("OCEANIA"),
  valueAQ("AQ");

  const Geo(this.wireValue);
  @override
  final String wireValue;

  static Geo fromValue(String value) {
    for (final item in Geo.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Geo value: $value');
  }
}
