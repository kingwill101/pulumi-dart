/// Tag filtering profile that determines which tags to keep/remove.
enum DicomConfigFilterProfileHealthcareV1beta1 {
  tagFilterProfileUnspecified("TAG_FILTER_PROFILE_UNSPECIFIED"),
  minimalKeepListProfile("MINIMAL_KEEP_LIST_PROFILE"),
  attributeConfidentialityBasicProfile("ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"),
  keepAllProfile("KEEP_ALL_PROFILE"),
  deidentifyTagContents("DEIDENTIFY_TAG_CONTENTS");

  const DicomConfigFilterProfileHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static DicomConfigFilterProfileHealthcareV1beta1 fromValue(String value) {
    for (final item in DicomConfigFilterProfileHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DicomConfigFilterProfileHealthcareV1beta1 value: $value');
  }
}
