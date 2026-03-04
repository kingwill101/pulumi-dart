/// The multi cloud resource's cloud name.
enum CloudName {
  valueAzure("Azure"),
  valueAWS("AWS"),
  valueGCP("GCP"),
  valueGithub("Github"),
  valueAzureDevOps("AzureDevOps"),
  valueGitLab("GitLab"),
  valueDockerHub("DockerHub"),
  valueJFrog("JFrog");

  const CloudName(this.wireValue);
  final String wireValue;

  static CloudName fromValue(String value) {
    for (final item in CloudName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudName value: $value');
  }
}
