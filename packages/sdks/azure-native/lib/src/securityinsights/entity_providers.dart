/// The entity provider that is synced.
enum EntityProviders {
  valueActiveDirectory("ActiveDirectory"),
  valueAzureActiveDirectory("AzureActiveDirectory");

  const EntityProviders(this.value);
  final String value;

  static EntityProviders fromValue(String value) {
    for (final item in EntityProviders.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityProviders value: $value');
  }
}

