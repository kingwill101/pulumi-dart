/// The IKE encryption algorithm (IKE phase 2).
enum IkeEncryption {
  valueDES("DES"),
  valueDES3("DES3"),
  valueAES128("AES128"),
  valueAES192("AES192"),
  valueAES256("AES256"),
  valueGCMAES256("GCMAES256"),
  valueGCMAES128("GCMAES128");

  const IkeEncryption(this.value);
  final String value;

  static IkeEncryption fromValue(String value) {
    for (final item in IkeEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IkeEncryption value: $value');
  }
}

