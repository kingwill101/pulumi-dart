/// Property to select Azure Storage type. Available options: blobContainer.
enum FunctionsDeploymentStorageType {
  valueBlobContainer("blobContainer");

  const FunctionsDeploymentStorageType(this.wireValue);
  final String wireValue;

  static FunctionsDeploymentStorageType fromValue(String value) {
    for (final item in FunctionsDeploymentStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionsDeploymentStorageType value: $value');
  }
}

