import 'package:pulumi/pulumi.dart' as pulumi;

/// The operation system required by the code in service.
enum OperatingSystemType implements pulumi.PulumiEnum<String> {
  valueLinux("Linux"),
  valueWindows("Windows");

  const OperatingSystemType(this.wireValue);
  @override
  final String wireValue;

  static OperatingSystemType fromValue(String value) {
    for (final item in OperatingSystemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemType value: $value');
  }
}
