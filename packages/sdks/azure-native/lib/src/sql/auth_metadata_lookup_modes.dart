/// The managed instance's authentication metadata lookup mode.
enum AuthMetadataLookupModes {
  valueAzureAD("AzureAD"),
  valuePaired("Paired"),
  valueWindows("Windows");

  const AuthMetadataLookupModes(this.wireValue);
  final String wireValue;

  static AuthMetadataLookupModes fromValue(String value) {
    for (final item in AuthMetadataLookupModes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthMetadataLookupModes value: $value');
  }
}
