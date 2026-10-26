import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of this Volume.
enum VolumeConfigType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  flash("FLASH"),
  disk("DISK");

  const VolumeConfigType(this.wireValue);
  @override
  final String wireValue;

  static VolumeConfigType fromValue(String value) {
    for (final item in VolumeConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeConfigType value: $value');
  }
}
