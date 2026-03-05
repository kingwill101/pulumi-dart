/// The strategy for deleting the OS disk.
enum OsDiskDeleteOption {
  valueDelete("Delete");

  const OsDiskDeleteOption(this.wireValue);
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

