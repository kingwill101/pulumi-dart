import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the environment data.
enum EnvironmentType implements pulumi.PulumiEnum<String> {
  awsAccount("AwsAccount"),
  gcpProject("GcpProject"),
  githubScope("GithubScope"),
  azureDevOpsScope("AzureDevOpsScope"),
  gitlabScope("GitlabScope"),
  dockerHubOrganization("DockerHubOrganization"),
  jFrogArtifactory("JFrogArtifactory");

  const EnvironmentType(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentType fromValue(String value) {
    for (final item in EnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentType value: $value');
  }
}
