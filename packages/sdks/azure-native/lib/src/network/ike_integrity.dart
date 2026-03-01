/// The IKE integrity algorithm (IKE phase 2).
enum IkeIntegrity {
  valueMD5("MD5"),
  valueSHA1("SHA1"),
  valueSHA256("SHA256"),
  valueSHA384("SHA384"),
  valueGCMAES256("GCMAES256"),
  valueGCMAES128("GCMAES128");

  const IkeIntegrity(this.value);
  final String value;

  static IkeIntegrity fromValue(String value) {
    for (final item in IkeIntegrity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IkeIntegrity value: $value');
  }
}

