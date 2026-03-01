/// Provider of the volume.
enum VolumeProvider {
  valueSFAzureFile("SFAzureFile");

  const VolumeProvider(this.value);
  final String value;

  static VolumeProvider fromValue(String value) {
    for (final item in VolumeProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeProvider value: $value');
  }
}

