/// SCM type.
enum ScmType {
  none("None"),
  dropbox("Dropbox"),
  tfs("Tfs"),
  localGit("LocalGit"),
  gitHub("GitHub"),
  codePlexGit("CodePlexGit"),
  codePlexHg("CodePlexHg"),
  bitbucketGit("BitbucketGit"),
  bitbucketHg("BitbucketHg"),
  externalGit("ExternalGit"),
  externalHg("ExternalHg"),
  oneDrive("OneDrive"),
  vSO("VSO"),
  vSTSRM("VSTSRM");

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
