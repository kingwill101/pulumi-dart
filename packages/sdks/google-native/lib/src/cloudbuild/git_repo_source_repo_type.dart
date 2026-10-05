import 'package:pulumi/pulumi.dart' as pulumi;

/// See RepoType below.
enum GitRepoSourceRepoType implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  cloudSourceRepositories("CLOUD_SOURCE_REPOSITORIES"),
  github("GITHUB"),
  bitbucketServer("BITBUCKET_SERVER"),
  gitlab("GITLAB");

  const GitRepoSourceRepoType(this.wireValue);
  @override
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
