/// The strategy for creating the OS disk.
enum OsDiskCreateOption {
  ephemeral("Ephemeral"),
  persistent("Persistent");

  const OsDiskCreateOption(this.wireValue);
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

