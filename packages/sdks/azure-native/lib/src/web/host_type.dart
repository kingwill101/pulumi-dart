import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the hostname is a standard or repository hostname.
enum HostType implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueRepository("Repository");

  const HostType(this.wireValue);
  @override
  final String wireValue;

  static HostType fromValue(String value) {
    for (final item in HostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostType value: $value');
  }
}
