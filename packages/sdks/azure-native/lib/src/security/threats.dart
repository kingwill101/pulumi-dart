import 'package:pulumi/pulumi.dart' as pulumi;

/// Threats impact of the assessment
enum Threats implements pulumi.PulumiEnum<String> {
  valueAccountBreach("accountBreach"),
  valueDataExfiltration("dataExfiltration"),
  valueDataSpillage("dataSpillage"),
  valueMaliciousInsider("maliciousInsider"),
  valueElevationOfPrivilege("elevationOfPrivilege"),
  valueThreatResistance("threatResistance"),
  valueMissingCoverage("missingCoverage"),
  valueDenialOfService("denialOfService");

  const Threats(this.wireValue);
  @override
  final String wireValue;

  static Threats fromValue(String value) {
    for (final item in Threats.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Threats value: $value');
  }
}
