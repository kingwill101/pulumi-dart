// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_store_setting_value.dart';

/// Input properties used for looking up and filtering ConfigStoreSetting resources.
class ConfigStoreSettingState {
  /// The ID of the config store setting (e.g. `defaultLauncherMachineType`).
  final pulumi.Input<String?>? configStoreSettingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Dataflow region for the setting (e.g. `us-central1`).
  final pulumi.Input<String?>? location;
  /// The resource name of the setting.
  /// Format: `projects/{project_number}/locations/{location}/configStoreSettings/{config_store_setting_id}`
  /// or `folders/{folder_id}/locations/{location}/configStoreSettings/{config_store_setting_id}`
  /// or `organizations/{organization_id}/locations/{location}/configStoreSettings/{config_store_setting_id}`
  final pulumi.Input<String?>? name;
  /// The parent resource in which to create the config store setting.
  /// Must be in one of the following formats:
  /// * `projects/{project_number}` (numeric project number is required)
  /// * `folders/{folder_id}`
  /// * `organizations/{organization_id}`
  final pulumi.Input<String?>? parent;
  /// The configuration value of the setting.
  /// Structure is documented below.
  final pulumi.Input<ConfigStoreSettingValue?>? value;

  /// Creates a new [ConfigStoreSettingState].
  /// [configStoreSettingId] The ID of the config store setting (e.g. `defaultLauncherMachineType`).
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The Dataflow region for the setting (e.g. `us-central1`).
  /// [name] The resource name of the setting.
  /// [parent] The parent resource in which to create the config store setting.
  /// [value] The configuration value of the setting.
  const ConfigStoreSettingState({
    this.configStoreSettingId,
    this.deletionPolicy,
    this.location,
    this.name,
    this.parent,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreSettingId': ?configStoreSettingId,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'value': ?pulumi.Input.mapOptionalInputValue<ConfigStoreSettingValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ConfigStoreSettingState.fromMap(Map<String, dynamic> map) {
    return ConfigStoreSettingState(
      configStoreSettingId: (() { final guardedValue = map['configStoreSettingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigStoreSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
