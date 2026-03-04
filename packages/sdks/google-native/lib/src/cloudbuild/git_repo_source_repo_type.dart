/// See RepoType below.
enum GitRepoSourceRepoType {
  unknown("UNKNOWN"),
  cloudSourceRepositories("CLOUD_SOURCE_REPOSITORIES"),
  github("GITHUB"),
  bitbucketServer("BITBUCKET_SERVER"),
  gitlab("GITLAB");

  const GitRepoSourceRepoType(this.wireValue);
  final String wireValue;

  static GitRepoSourceRepoType fromValue(String value) {
    for (final item in GitRepoSourceRepoType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GitRepoSourceRepoType value: $value');
  }
}
