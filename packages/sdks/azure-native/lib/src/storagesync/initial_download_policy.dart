import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for how namespace and files are recalled during FastDr.
enum InitialDownloadPolicy implements pulumi.PulumiEnum<String> {
  namespaceOnly("NamespaceOnly"),
  namespaceThenModifiedFiles("NamespaceThenModifiedFiles"),
  avoidTieredFiles("AvoidTieredFiles");

  const InitialDownloadPolicy(this.wireValue);
  @override
  final String wireValue;

  static InitialDownloadPolicy fromValue(String value) {
    for (final item in InitialDownloadPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitialDownloadPolicy value: $value');
  }
}
