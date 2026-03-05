/// Base profile type for handling DICOM tags.
enum DicomTagConfigProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  minimalKeepListProfile("MINIMAL_KEEP_LIST_PROFILE"),
  attributeConfidentialityBasicProfile("ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"),
  keepAllProfile("KEEP_ALL_PROFILE"),
  deidentifyTagContents("DEIDENTIFY_TAG_CONTENTS");

  const DicomTagConfigProfileType(this.wireValue);
  final String wireValue;

  static DicomTagConfigProfileType fromValue(String value) {
    for (final item in DicomTagConfigProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DicomTagConfigProfileType value: $value');
  }
}

