/// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
enum GooglePrivacyDlpV2CustomInfoTypeExclusionType {
  exclusionTypeUnspecified("EXCLUSION_TYPE_UNSPECIFIED"),
  exclusionTypeExclude("EXCLUSION_TYPE_EXCLUDE");

  const GooglePrivacyDlpV2CustomInfoTypeExclusionType(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2CustomInfoTypeExclusionType fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CustomInfoTypeExclusionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CustomInfoTypeExclusionType value: $value');
  }
}
