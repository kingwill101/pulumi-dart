import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk's independence mode type
enum DiskIndependenceMode implements pulumi.PulumiEnum<String> {
  valuePersistent("persistent"),
  valueIndependentPersistent("independent_persistent"),
  valueIndependentNonpersistent("independent_nonpersistent");

  const DiskIndependenceMode(this.wireValue);
  @override
  final String wireValue;

  static DiskIndependenceMode fromValue(String value) {
    for (final item in DiskIndependenceMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskIndependenceMode value: $value');
  }
}
