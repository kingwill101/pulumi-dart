/// An External Reference allows a Package to reference an external source of additional information, metadata, enumerations, asset identifiers, or downloadable content believed to be relevant to the Package
enum ExternalRefCategoryContaineranalysisV1beta1 {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  security("SECURITY"),
  packageManager("PACKAGE_MANAGER"),
  persistentId("PERSISTENT_ID"),
  other("OTHER");

  const ExternalRefCategoryContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static ExternalRefCategoryContaineranalysisV1beta1 fromValue(String value) {
    for (final item in ExternalRefCategoryContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalRefCategoryContaineranalysisV1beta1 value: $value');
  }
}
