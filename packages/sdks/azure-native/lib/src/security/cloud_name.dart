/// The multi cloud resource's cloud name.
enum CloudName {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP"),
  github("Github"),
  azureDevOps("AzureDevOps"),
  gitLab("GitLab"),
  dockerHub("DockerHub"),
  jFrog("JFrog");

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
