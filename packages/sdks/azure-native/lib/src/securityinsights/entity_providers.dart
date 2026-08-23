/// The entity provider that is synced.
enum EntityProviders {
  valueActiveDirectory("ActiveDirectory"),
  valueAzureActiveDirectory("AzureActiveDirectory");

  const EntityProviders(this.wireValue);
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
