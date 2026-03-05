/// The type of this Volume.
enum VolumeConfigType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  flash("FLASH"),
  disk("DISK");

  const VolumeConfigType(this.wireValue);
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

