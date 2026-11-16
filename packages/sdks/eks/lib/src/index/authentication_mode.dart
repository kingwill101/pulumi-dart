import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication mode of the cluster. Valid values are `CONFIG_MAP`, `API` or `API_AND_CONFIG_MAP`.
///
/// See for more details:
/// https://docs.aws.amazon.com/eks/latest/userguide/grant-k8s-access.html#set-cam
enum AuthenticationMode implements pulumi.PulumiEnum<String> {
  configMap("CONFIG_MAP"),
  api("API"),
  apiAndConfigMap("API_AND_CONFIG_MAP");

  const AuthenticationMode(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}
