import 'package:pulumi/pulumi.dart' as pulumi;

/// The strategy for creating the OS disk.
enum OsDiskCreateOption implements pulumi.PulumiEnum<String> {
  ephemeral("Ephemeral"),
  persistent("Persistent");

  const OsDiskCreateOption(this.wireValue);
  @override
  final String wireValue;

  static OsDiskCreateOption fromValue(String value) {
    for (final item in OsDiskCreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsDiskCreateOption value: $value');
  }
}
