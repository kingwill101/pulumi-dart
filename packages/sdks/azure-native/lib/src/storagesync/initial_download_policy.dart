/// Policy for how namespace and files are recalled during FastDr.
enum InitialDownloadPolicy {
  namespaceOnly("NamespaceOnly"),
  namespaceThenModifiedFiles("NamespaceThenModifiedFiles"),
  avoidTieredFiles("AvoidTieredFiles");

  const InitialDownloadPolicy(this.value);
  final String value;

  static InitialDownloadPolicy fromValue(String value) {
    for (final item in InitialDownloadPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitialDownloadPolicy value: $value');
  }
}

