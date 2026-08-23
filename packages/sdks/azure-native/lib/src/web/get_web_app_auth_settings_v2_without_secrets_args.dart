// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_auth_settings_v2_without_secrets_args_doc}
/// Arguments for getWebAppAuthSettingsV2WithoutSecrets.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_auth_settings_v2_without_secrets_args_doc}
class GetWebAppAuthSettingsV2WithoutSecretsArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppAuthSettingsV2WithoutSecretsArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppAuthSettingsV2WithoutSecretsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppAuthSettingsV2WithoutSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppAuthSettingsV2WithoutSecretsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
