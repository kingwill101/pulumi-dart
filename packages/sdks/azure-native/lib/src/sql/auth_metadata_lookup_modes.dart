/// The managed instance's authentication metadata lookup mode.
enum AuthMetadataLookupModes {
  valueAzureAD("AzureAD"),
  valuePaired("Paired"),
  valueWindows("Windows");

  const AuthMetadataLookupModes(this.value);
  final String value;

  static AuthMetadataLookupModes fromValue(String value) {
    for (final item in AuthMetadataLookupModes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthMetadataLookupModes value: $value');
  }
}

