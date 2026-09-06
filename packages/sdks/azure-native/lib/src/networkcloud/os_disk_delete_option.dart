import 'package:pulumi/pulumi.dart' as pulumi;

/// The strategy for deleting the OS disk.
enum OsDiskDeleteOption implements pulumi.PulumiEnum<String> {
  valueDelete("Delete");

  const OsDiskDeleteOption(this.wireValue);
  @override
  final String wireValue;

  static OsDiskDeleteOption fromValue(String value) {
    for (final item in OsDiskDeleteOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsDiskDeleteOption value: $value');
  }
}
