/// The type of the environment data.
enum EnvironmentType {
  awsAccount("AwsAccount"),
  gcpProject("GcpProject"),
  githubScope("GithubScope"),
  azureDevOpsScope("AzureDevOpsScope"),
  gitlabScope("GitlabScope"),
  dockerHubOrganization("DockerHubOrganization"),
  jFrogArtifactory("JFrogArtifactory");

  const EnvironmentType(this.wireValue);
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
