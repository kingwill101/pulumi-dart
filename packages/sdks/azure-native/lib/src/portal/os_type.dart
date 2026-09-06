import 'package:pulumi/pulumi.dart' as pulumi;

/// The operating system type of the cloud shell. Deprecated, use preferredShellType.
enum OsType implements pulumi.PulumiEnum<String> {
  valueWindows("Windows"),
  valueLinux("Linux");

  const OsType(this.wireValue);
  @override
  final String wireValue;

  static OsType fromValue(String value) {
    for (final item in OsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsType value: $value');
  }
}
