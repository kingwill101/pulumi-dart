/// The azure resource type.
enum AzureResourceType {
  valueKeyVault("KeyVault");

  const AzureResourceType(this.wireValue);
  final String wireValue;

  static AzureResourceType fromValue(String value) {
    for (final item in AzureResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureResourceType value: $value');
  }
}
