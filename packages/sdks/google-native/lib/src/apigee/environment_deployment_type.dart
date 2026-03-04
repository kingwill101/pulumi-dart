/// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
enum EnvironmentDeploymentType {
  deploymentTypeUnspecified("DEPLOYMENT_TYPE_UNSPECIFIED"),
  proxy("PROXY"),
  archive("ARCHIVE");

  const EnvironmentDeploymentType(this.wireValue);
  final String wireValue;

  static EnvironmentDeploymentType fromValue(String value) {
    for (final item in EnvironmentDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentDeploymentType value: $value');
  }
}
