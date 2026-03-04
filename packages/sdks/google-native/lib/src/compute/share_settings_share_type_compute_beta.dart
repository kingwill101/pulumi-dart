/// Type of sharing for this shared-reservation
enum ShareSettingsShareTypeComputeBeta {
  local("LOCAL"),
  organization("ORGANIZATION"),
  shareTypeUnspecified("SHARE_TYPE_UNSPECIFIED"),
  specificProjects("SPECIFIC_PROJECTS");

  const ShareSettingsShareTypeComputeBeta(this.wireValue);
  final String wireValue;

  static ShareSettingsShareTypeComputeBeta fromValue(String value) {
    for (final item in ShareSettingsShareTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ShareSettingsShareTypeComputeBeta value: $value',
    );
  }
}
