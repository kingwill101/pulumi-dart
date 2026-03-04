/// The property is for NFS share only. The default is NoRootSquash.
enum RootSquashType {
  valueNoRootSquash("NoRootSquash"),
  valueRootSquash("RootSquash"),
  valueAllSquash("AllSquash");

  const RootSquashType(this.wireValue);
  final String wireValue;

  static RootSquashType fromValue(String value) {
    for (final item in RootSquashType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RootSquashType value: $value');
  }
}
