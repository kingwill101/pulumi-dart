import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration phase of Public IP Address.
enum PublicIPAddressMigrationPhase implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valuePrepare("Prepare"),
  valueCommit("Commit"),
  valueAbort("Abort"),
  valueCommitted("Committed");

  const PublicIPAddressMigrationPhase(this.wireValue);
  @override
  final String wireValue;

  static PublicIPAddressMigrationPhase fromValue(String value) {
    for (final item in PublicIPAddressMigrationPhase.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressMigrationPhase value: $value');
  }
}
