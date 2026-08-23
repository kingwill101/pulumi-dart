// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action.dart';
import 'plugin_instance_auth_config.dart';

/// Input properties used for looking up and filtering PluginInstance resources.
class PluginInstanceState {
  /// The action status for the plugin instance.
  /// Structure is documented below.
  final pulumi.Input<List<PluginInstanceAction>>? actions;
  /// AuthConfig represents the authentication information.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfig>? authConfig;
  /// Timestamp indicating when the plugin instance was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The display name for this plugin instance. Max length is 255 characters.
  final pulumi.Input<bool>? disable;
  /// The display name for this plugin instance. Max length is 255 characters.
  final pulumi.Input<String>? displayName;
  /// Error message describing the failure, if any, during Create, Delete or
  /// ApplyConfig operation corresponding to the plugin instance.This field will
  /// only be populated if the plugin instance is in the ERROR or FAILED state.
  final pulumi.Input<String>? errorMessage;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The unique name of the plugin instance resource.
  /// Format:
  /// `projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}`
  final pulumi.Input<String>? name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? plugin;
  /// The ID to use for the plugin instance, which will become the final
  /// component of the plugin instance's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another plugin instance in the plugin
  /// resource.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z[0-9]-_/.
  final pulumi.Input<String>? pluginInstanceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. The source project id of the plugin instance. This will be the id of runtime project in case of gcp based plugins and org id in case of non gcp based plugins. This field will be a required field for Google provided on-ramp plugins.
  final pulumi.Input<String>? sourceProjectId;
  /// The current state of the plugin instance (e.g., enabled, disabled,
  /// provisioning).
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// APPLYING_CONFIG
  /// ERROR
  /// FAILED
  /// DELETING
  final pulumi.Input<String>? state;
  /// Timestamp indicating when the plugin instance was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PluginInstanceState].
  /// [actions] The action status for the plugin instance.
  /// [authConfig] AuthConfig represents the authentication information.
  /// [createTime] Timestamp indicating when the plugin instance was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disable] The display name for this plugin instance. Max length is 255 characters.
  /// [displayName] The display name for this plugin instance. Max length is 255 characters.
  /// [errorMessage] Error message describing the failure, if any, during Create, Delete or
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The unique name of the plugin instance resource.
  /// [plugin] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [pluginInstanceId] The ID to use for the plugin instance, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceProjectId] Optional. The source project id of the plugin instance. This will be the id of runtime project in case of gcp based plugins and org id in case of non gcp based plugins. This field will be a required field for Google provided on-ramp plugins.
  /// [state] The current state of the plugin instance (e.g., enabled, disabled,
  /// [updateTime] Timestamp indicating when the plugin instance was last updated.
  const PluginInstanceState({
    this.actions,
    this.authConfig,
    this.createTime,
    this.deletionPolicy,
    this.disable,
    this.displayName,
    this.errorMessage,
    this.location,
    this.name,
    this.plugin,
    this.pluginInstanceId,
    this.project,
    this.sourceProjectId,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PluginInstanceAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PluginInstanceAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'disable': ?disable,
      'displayName': ?displayName,
      'errorMessage': ?errorMessage,
      'location': ?location,
      'name': ?name,
      'plugin': ?plugin,
      'pluginInstanceId': ?pluginInstanceId,
      'project': ?project,
      'sourceProjectId': ?sourceProjectId,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory PluginInstanceState.fromMap(Map<String, dynamic> map) {
    return PluginInstanceState(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginInstanceAction>(guardedValue, (value) => PluginInstanceAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disable: (() { final guardedValue = map['disable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plugin: (() { final guardedValue = map['plugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginInstanceId: (() { final guardedValue = map['pluginInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceProjectId: (() { final guardedValue = map['sourceProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
