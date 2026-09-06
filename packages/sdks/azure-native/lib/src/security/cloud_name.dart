import 'package:pulumi/pulumi.dart' as pulumi;

/// The multi cloud resource's cloud name.
enum CloudName implements pulumi.PulumiEnum<String> {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP"),
  github("Github"),
  azureDevOps("AzureDevOps"),
  gitLab("GitLab"),
  dockerHub("DockerHub"),
  jFrog("JFrog");

  const CloudName(this.wireValue);
  @override
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
