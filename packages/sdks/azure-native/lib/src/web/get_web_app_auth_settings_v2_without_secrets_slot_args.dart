// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_auth_settings_v2_without_secrets_slot_args_doc}
/// Arguments for getWebAppAuthSettingsV2WithoutSecretsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_auth_settings_v2_without_secrets_slot_args_doc}
class GetWebAppAuthSettingsV2WithoutSecretsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the settings for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppAuthSettingsV2WithoutSecretsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the settings for the production slot.
  GetWebAppAuthSettingsV2WithoutSecretsSlotArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppAuthSettingsV2WithoutSecretsSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppAuthSettingsV2WithoutSecretsSlotArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

