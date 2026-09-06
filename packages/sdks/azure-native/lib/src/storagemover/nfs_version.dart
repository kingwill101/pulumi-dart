import 'package:pulumi/pulumi.dart' as pulumi;

/// The NFS protocol version.
enum NfsVersion implements pulumi.PulumiEnum<String> {
  nFSauto("NFSauto"),
  nFSv3("NFSv3"),
  nFSv4("NFSv4");

  const NfsVersion(this.wireValue);
  @override
  final String wireValue;

  static NfsVersion fromValue(String value) {
    for (final item in NfsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsVersion value: $value');
  }
}
