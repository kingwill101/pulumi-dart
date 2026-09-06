import 'package:pulumi/pulumi.dart' as pulumi;

/// The categories of resource that is at risk when the assessment is unhealthy
enum Categories implements pulumi.PulumiEnum<String> {
  valueCompute("Compute"),
  valueNetworking("Networking"),
  valueData("Data"),
  valueIdentityAndAccess("IdentityAndAccess"),
  valueIoT("IoT");

  const Categories(this.wireValue);
  @override
  final String wireValue;

  static Categories fromValue(String value) {
    for (final item in Categories.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Categories value: $value');
  }
}
