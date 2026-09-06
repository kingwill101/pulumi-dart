import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk configuration to apply to SQL Server.
enum DiskConfigurationType implements pulumi.PulumiEnum<String> {
  nEW("NEW"),
  eXTEND("EXTEND"),
  aDD("ADD");

  const DiskConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static DiskConfigurationType fromValue(String value) {
    for (final item in DiskConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskConfigurationType value: $value');
  }
}
