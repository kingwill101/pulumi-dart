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
  /// [disable] The display name for this plugin instance. Max length is 255 characters.
  /// [displayName] The display name for this plugin instance. Max length is 255 characters.
  /// [errorMessage] Error message describing the failure, if any, during Create, Delete or
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The unique name of the plugin instance resource.
  /// [plugin] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [pluginInstanceId] The ID to use for the plugin instance, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current state of the plugin instance (e.g., enabled, disabled,
  /// [updateTime] Timestamp indicating when the plugin instance was last updated.
  PluginInstanceState({
    pulumi.Output<List<PluginInstanceAction>>? actions,
    pulumi.Output<PluginInstanceAuthConfig>? authConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disable,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? errorMessage,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? plugin,
    pulumi.Output<String>? pluginInstanceId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      actions = pulumi.Input.asOptionalInput<List<PluginInstanceAction>>(actions),
      authConfig = pulumi.Input.asOptionalInput<PluginInstanceAuthConfig>(authConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disable = pulumi.Input.asOptionalInput<bool>(disable),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      errorMessage = pulumi.Input.asOptionalInput<String>(errorMessage),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      plugin = pulumi.Input.asOptionalInput<String>(plugin),
      pluginInstanceId = pulumi.Input.asOptionalInput<String>(pluginInstanceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PluginInstanceAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PluginInstanceAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'disable': ?disable,
      'displayName': ?displayName,
      'errorMessage': ?errorMessage,
      'location': ?location,
      'name': ?name,
      'plugin': ?plugin,
      'pluginInstanceId': ?pluginInstanceId,
      'project': ?project,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory PluginInstanceState.fromMap(Map<String, dynamic> map) {
    return PluginInstanceState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<PluginInstanceAction>>(pulumi.Input.decodeList<PluginInstanceAction>(map['actions'], (value) => PluginInstanceAction.fromMap((value as Map).cast<String, dynamic>()))),
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<PluginInstanceAuthConfig>(PluginInstanceAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disable: map['disable'] == null ? null : pulumi.Output.create<bool>(map['disable'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      errorMessage: map['errorMessage'] == null ? null : pulumi.Output.create<String>(map['errorMessage'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      plugin: map['plugin'] == null ? null : pulumi.Output.create<String>(map['plugin'] as String),
      pluginInstanceId: map['pluginInstanceId'] == null ? null : pulumi.Output.create<String>(map['pluginInstanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

