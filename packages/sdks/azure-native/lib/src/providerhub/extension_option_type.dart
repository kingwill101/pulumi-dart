enum ExtensionOptionType {
  notSpecified("NotSpecified"),
  doNotMergeExistingReadOnlyAndSecretProperties(
    "DoNotMergeExistingReadOnlyAndSecretProperties",
  ),
  includeInternalMetadata("IncludeInternalMetadata");

  const ExtensionOptionType(this.wireValue);
  final String wireValue;

  static ExtensionOptionType fromValue(String value) {
    for (final item in ExtensionOptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtensionOptionType value: $value');
  }
}
