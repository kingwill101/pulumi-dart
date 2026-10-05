import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag filtering profile that determines which tags to keep/remove.
enum DicomConfigFilterProfile implements pulumi.PulumiEnum<String> {
  tagFilterProfileUnspecified("TAG_FILTER_PROFILE_UNSPECIFIED"),
  minimalKeepListProfile("MINIMAL_KEEP_LIST_PROFILE"),
  attributeConfidentialityBasicProfile("ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"),
  keepAllProfile("KEEP_ALL_PROFILE"),
  deidentifyTagContents("DEIDENTIFY_TAG_CONTENTS");

  const DicomConfigFilterProfile(this.wireValue);
  @override
  final String wireValue;

  static DicomConfigFilterProfile fromValue(String value) {
    for (final item in DicomConfigFilterProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DicomConfigFilterProfile value: $value');
  }
}
