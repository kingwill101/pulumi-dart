// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_store_setting_value.dart';

/// {@template pulumi_dataflow_config_store_setting_config_store_setting_args_doc}
/// The set of arguments for ConfigStoreSetting.
/// {@endtemplate}
/// {@macro pulumi_dataflow_config_store_setting_config_store_setting_args_doc}
class ConfigStoreSettingArgs {
  /// The ID of the config store setting (e.g. `defaultLauncherMachineType`).
  final pulumi.Input<String> configStoreSettingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Dataflow region for the setting (e.g. `us-central1`).
  final pulumi.Input<String> location;
  /// The parent resource in which to create the config store setting.
  /// Must be in one of the following formats:
  /// * `projects/{project_number}` (numeric project number is required)
  /// * `folders/{folder_id}`
  /// * `organizations/{organization_id}`
  final pulumi.Input<String> parent;
  /// The configuration value of the setting.
  /// Structure is documented below.
  final pulumi.Input<ConfigStoreSettingValue> value;

  /// Creates a new [ConfigStoreSettingArgs].
  /// [configStoreSettingId] The ID of the config store setting (e.g. `defaultLauncherMachineType`).
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The Dataflow region for the setting (e.g. `us-central1`).
  /// [parent] The parent resource in which to create the config store setting.
  /// [value] The configuration value of the setting.
  const ConfigStoreSettingArgs({
    required this.configStoreSettingId,
    this.deletionPolicy,
    required this.location,
    required this.parent,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreSettingId': configStoreSettingId,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'parent': parent,
      'value': pulumi.Input.mapInputValue<ConfigStoreSettingValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ConfigStoreSettingArgs.fromMap(Map<String, dynamic> map) {
    return ConfigStoreSettingArgs(
      configStoreSettingId: pulumi.Input.fromValue(map['configStoreSettingId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      value: pulumi.Input.fromValue(ConfigStoreSettingValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}
