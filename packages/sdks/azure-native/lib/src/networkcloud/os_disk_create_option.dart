/// The strategy for creating the OS disk.
enum OsDiskCreateOption {
  ephemeral("Ephemeral"),
  persistent("Persistent");

  const OsDiskCreateOption(this.value);
  final String value;

  static OsDiskCreateOption fromValue(String value) {
    for (final item in OsDiskCreateOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsDiskCreateOption value: $value');
  }
}

