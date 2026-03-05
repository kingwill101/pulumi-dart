/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
enum ExternalRefCategory {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  security("SECURITY"),
  packageManager("PACKAGE_MANAGER"),
  persistentId("PERSISTENT_ID"),
  other("OTHER");

  const ExternalRefCategory(this.wireValue);
  final String wireValue;

  static ExternalRefCategory fromValue(String value) {
    for (final item in ExternalRefCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalRefCategory value: $value');
  }
}

