import 'package:pulumi/pulumi.dart' as pulumi;

/// Property to select Azure Storage type. Available options: blobContainer.
enum FunctionsDeploymentStorageType implements pulumi.PulumiEnum<String> {
  blobContainer("blobContainer");

  const FunctionsDeploymentStorageType(this.wireValue);
  @override
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
