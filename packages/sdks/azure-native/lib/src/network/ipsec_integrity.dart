import 'package:pulumi/pulumi.dart' as pulumi;

/// The IPSec integrity algorithm (IKE phase 1).
enum IpsecIntegrity implements pulumi.PulumiEnum<String> {
  valueMD5("MD5"),
  valueSHA1("SHA1"),
  valueSHA256("SHA256"),
  valueGCMAES128("GCMAES128"),
  valueGCMAES192("GCMAES192"),
  valueGCMAES256("GCMAES256");

  const IpsecIntegrity(this.wireValue);
  @override
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
