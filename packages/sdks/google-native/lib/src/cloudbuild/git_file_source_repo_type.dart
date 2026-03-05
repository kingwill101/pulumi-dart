/// See RepoType above.
enum GitFileSourceRepoType {
  unknown("UNKNOWN"),
  cloudSourceRepositories("CLOUD_SOURCE_REPOSITORIES"),
  github("GITHUB"),
  bitbucketServer("BITBUCKET_SERVER"),
  gitlab("GITLAB");

  const GitFileSourceRepoType(this.wireValue);
  final String wireValue;

  static GitFileSourceRepoType fromValue(String value) {
    for (final item in GitFileSourceRepoType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GitFileSourceRepoType value: $value');
  }
}

