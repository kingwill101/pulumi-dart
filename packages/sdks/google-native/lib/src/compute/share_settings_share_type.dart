/// Type of sharing for this shared-reservation
enum ShareSettingsShareType {
  directProjectsUnderSpecificFolders("DIRECT_PROJECTS_UNDER_SPECIFIC_FOLDERS"),
  local("LOCAL"),
  organization("ORGANIZATION"),
  shareTypeUnspecified("SHARE_TYPE_UNSPECIFIED"),
  specificProjects("SPECIFIC_PROJECTS");

  const ShareSettingsShareType(this.wireValue);
  final String wireValue;

  static ShareSettingsShareType fromValue(String value) {
    for (final item in ShareSettingsShareType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareSettingsShareType value: $value');
  }
}
