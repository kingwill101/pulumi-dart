import 'package:pulumi/pulumi.dart' as pulumi;

/// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
enum DashConfigSegmentReferenceScheme implements pulumi.PulumiEnum<String> {
  segmentReferenceSchemeUnspecified("SEGMENT_REFERENCE_SCHEME_UNSPECIFIED"),
  segmentList("SEGMENT_LIST"),
  segmentTemplateNumber("SEGMENT_TEMPLATE_NUMBER");

  const DashConfigSegmentReferenceScheme(this.wireValue);
  @override
  final String wireValue;

  static DashConfigSegmentReferenceScheme fromValue(String value) {
    for (final item in DashConfigSegmentReferenceScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DashConfigSegmentReferenceScheme value: $value');
  }
}
