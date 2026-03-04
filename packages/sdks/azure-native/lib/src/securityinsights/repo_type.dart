/// The repository type of the source control
enum RepoType {
  valueGithub("Github"),
  valueDevOps("DevOps");

  const RepoType(this.wireValue);
  final String wireValue;

  static RepoType fromValue(String value) {
    for (final item in RepoType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepoType value: $value');
  }
}
