/// Provider of the volume.
enum VolumeProvider {
  valueSFAzureFile("SFAzureFile");

  const VolumeProvider(this.wireValue);
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
