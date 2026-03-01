/// Base profile type for handling DICOM tags.
enum DicomTagConfigProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  minimalKeepListProfile("MINIMAL_KEEP_LIST_PROFILE"),
  attributeConfidentialityBasicProfile("ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"),
  keepAllProfile("KEEP_ALL_PROFILE"),
  deidentifyTagContents("DEIDENTIFY_TAG_CONTENTS");

  const DicomTagConfigProfileType(this.value);
  final String value;

  static DicomTagConfigProfileType fromValue(String value) {
    for (final item in DicomTagConfigProfileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DicomTagConfigProfileType value: $value');
  }
}

