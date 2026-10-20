import 'package:pulumi/pulumi.dart' as pulumi;

/// See RepoType above.
enum GitFileSourceRepoType implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  cloudSourceRepositories("CLOUD_SOURCE_REPOSITORIES"),
  github("GITHUB"),
  bitbucketServer("BITBUCKET_SERVER"),
  gitlab("GITLAB");

  const GitFileSourceRepoType(this.wireValue);
  @override
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
