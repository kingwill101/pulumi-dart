enum CommonLanguageSettingsDestinationsItem {
  clientLibraryDestinationUnspecified("CLIENT_LIBRARY_DESTINATION_UNSPECIFIED"),
  github("GITHUB"),
  packageManager("PACKAGE_MANAGER");

  const CommonLanguageSettingsDestinationsItem(this.wireValue);
  final String wireValue;

  static CommonLanguageSettingsDestinationsItem fromValue(String value) {
    for (final item in CommonLanguageSettingsDestinationsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommonLanguageSettingsDestinationsItem value: $value');
  }
}

