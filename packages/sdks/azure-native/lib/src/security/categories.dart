/// The categories of resource that is at risk when the assessment is unhealthy
enum Categories {
  valueCompute("Compute"),
  valueNetworking("Networking"),
  valueData("Data"),
  valueIdentityAndAccess("IdentityAndAccess"),
  valueIoT("IoT");

  const Categories(this.value);
  final String value;

  static Categories fromValue(String value) {
    for (final item in Categories.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Categories value: $value');
  }
}

