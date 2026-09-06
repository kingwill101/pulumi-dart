import 'package:pulumi/pulumi.dart' as pulumi;

/// The entity provider that is synced.
enum EntityProviders implements pulumi.PulumiEnum<String> {
  valueActiveDirectory("ActiveDirectory"),
  valueAzureActiveDirectory("AzureActiveDirectory");

  const EntityProviders(this.wireValue);
  @override
  final String wireValue;

  static EntityProviders fromValue(String value) {
    for (final item in EntityProviders.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityProviders value: $value');
  }
}
