/// Type of an annotation.
enum AnnotationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  typeLegacyExportConsent("TYPE_LEGACY_EXPORT_CONSENT"),
  typeQwiklab("TYPE_QWIKLAB");

  const AnnotationType(this.wireValue);
  final String wireValue;

  static AnnotationType fromValue(String value) {
    for (final item in AnnotationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AnnotationType value: $value');
  }
}

