/// The property is for NFS share only. The default is NoRootSquash.
enum RootSquashType {
  valueNoRootSquash("NoRootSquash"),
  valueRootSquash("RootSquash"),
  valueAllSquash("AllSquash");

  const RootSquashType(this.value);
  final String value;

  static RootSquashType fromValue(String value) {
    for (final item in RootSquashType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RootSquashType value: $value');
  }
}

