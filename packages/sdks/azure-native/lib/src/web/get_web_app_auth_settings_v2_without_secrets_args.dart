// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_auth_settings_v2_without_secrets_args_doc}
/// Arguments for getWebAppAuthSettingsV2WithoutSecrets.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_auth_settings_v2_without_secrets_args_doc}
class GetWebAppAuthSettingsV2WithoutSecretsArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppAuthSettingsV2WithoutSecretsArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppAuthSettingsV2WithoutSecretsArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppAuthSettingsV2WithoutSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppAuthSettingsV2WithoutSecretsArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

