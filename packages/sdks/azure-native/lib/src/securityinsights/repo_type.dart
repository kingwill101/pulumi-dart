/// The repository type of the source control
enum RepoType {
  valueGithub("Github"),
  valueDevOps("DevOps");

  const RepoType(this.value);
  final String value;

  static RepoType fromValue(String value) {
    for (final item in RepoType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RepoType value: $value');
  }
}

