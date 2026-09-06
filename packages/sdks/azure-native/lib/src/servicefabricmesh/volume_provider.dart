import 'package:pulumi/pulumi.dart' as pulumi;

/// Provider of the volume.
enum VolumeProvider implements pulumi.PulumiEnum<String> {
  valueSFAzureFile("SFAzureFile");

  const VolumeProvider(this.wireValue);
  @override
  final String wireValue;

  static VolumeProvider fromValue(String value) {
    for (final item in VolumeProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeProvider value: $value');
  }
}
