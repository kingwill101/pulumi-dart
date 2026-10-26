import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of an annotation.
enum AnnotationType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  typeLegacyExportConsent("TYPE_LEGACY_EXPORT_CONSENT"),
  typeQwiklab("TYPE_QWIKLAB");

  const AnnotationType(this.wireValue);
  @override
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
