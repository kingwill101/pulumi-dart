/// The IPSec integrity algorithm (IKE phase 1).
enum IpsecIntegrity {
  valueMD5("MD5"),
  valueSHA1("SHA1"),
  valueSHA256("SHA256"),
  valueGCMAES128("GCMAES128"),
  valueGCMAES192("GCMAES192"),
  valueGCMAES256("GCMAES256");

  const IpsecIntegrity(this.wireValue);
  final String wireValue;

  static IpsecIntegrity fromValue(String value) {
    for (final item in IpsecIntegrity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpsecIntegrity value: $value');
  }
}
