import 'package:pulumi/pulumi.dart' as pulumi;

enum CloudProvider implements pulumi.PulumiEnum<String> {
  aws("aws"),
  azureNative("azure-native"),
  gcp("gcp"),
  kubernetes("kubernetes"),
  oci("oci");

  const CloudProvider(this.wireValue);
  @override
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
