enum CloudProvider {
  valueAws("aws"),
  valueAzureNative("azure-native"),
  valueGcp("gcp"),
  valueKubernetes("kubernetes"),
  valueOci("oci");

  const CloudProvider(this.wireValue);
  final String wireValue;

  static CloudProvider fromValue(String value) {
    for (final item in CloudProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudProvider value: $value');
  }
}

