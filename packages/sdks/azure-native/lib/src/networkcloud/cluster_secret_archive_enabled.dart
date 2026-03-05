/// The indicator if the specified key vault should be used to archive the secrets of the cluster.
enum ClusterSecretArchiveEnabled {
  valueTrue("True"),
  valueFalse("False");

  const ClusterSecretArchiveEnabled(this.wireValue);
  final String wireValue;

  static ClusterSecretArchiveEnabled fromValue(String value) {
    for (final item in ClusterSecretArchiveEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSecretArchiveEnabled value: $value');
  }
}

