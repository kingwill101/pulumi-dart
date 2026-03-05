/// SCM type.
enum ScmType {
  valueNone("None"),
  valueDropbox("Dropbox"),
  valueTfs("Tfs"),
  valueLocalGit("LocalGit"),
  valueGitHub("GitHub"),
  valueCodePlexGit("CodePlexGit"),
  valueCodePlexHg("CodePlexHg"),
  valueBitbucketGit("BitbucketGit"),
  valueBitbucketHg("BitbucketHg"),
  valueExternalGit("ExternalGit"),
  valueExternalHg("ExternalHg"),
  valueOneDrive("OneDrive"),
  valueVSO("VSO"),
  valueVSTSRM("VSTSRM");

  const ScmType(this.wireValue);
  final String wireValue;

  static ScmType fromValue(String value) {
    for (final item in ScmType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScmType value: $value');
  }
}

