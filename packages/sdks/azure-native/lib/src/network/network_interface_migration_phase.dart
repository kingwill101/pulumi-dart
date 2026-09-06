import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration phase of Network Interface resource.
enum NetworkInterfaceMigrationPhase implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valuePrepare("Prepare"),
  valueCommit("Commit"),
  valueAbort("Abort"),
  valueCommitted("Committed");

  const NetworkInterfaceMigrationPhase(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceMigrationPhase fromValue(String value) {
    for (final item in NetworkInterfaceMigrationPhase.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceMigrationPhase value: $value');
  }
}
