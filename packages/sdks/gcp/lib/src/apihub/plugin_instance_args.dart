// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_action.dart';
import 'plugin_instance_auth_config.dart';

/// {@template pulumi_apihub_plugin_instance_plugin_instance_args_doc}
/// The set of arguments for PluginInstance.
/// {@endtemplate}
/// {@macro pulumi_apihub_plugin_instance_plugin_instance_args_doc}
class PluginInstanceArgs {
  /// The action status for the plugin instance.
  /// Structure is documented below.
  final pulumi.Input<List<PluginInstanceAction>>? actions;
  /// AuthConfig represents the authentication information.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfig>? authConfig;
  /// The display name for this plugin instance. Max length is 255 characters.
  final pulumi.Input<bool>? disable;
  /// The display name for this plugin instance. Max length is 255 characters.
  final pulumi.Input<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> plugin;
  /// The ID to use for the plugin instance, which will become the final
  /// component of the plugin instance's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified id is already used by another plugin instance in the plugin
  /// resource.
  /// * If not provided, a system generated id will be used.
  /// This value should be 4-63 characters, and valid characters
  /// are /a-z[0-9]-_/.
  final pulumi.Input<String> pluginInstanceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [PluginInstanceArgs].
  /// [actions] The action status for the plugin instance.
  /// [authConfig] AuthConfig represents the authentication information.
  /// [disable] The display name for this plugin instance. Max length is 255 characters.
  /// [displayName] The display name for this plugin instance. Max length is 255 characters.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [plugin] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [pluginInstanceId] The ID to use for the plugin instance, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  PluginInstanceArgs({
    this.actions,
    this.authConfig,
    this.disable,
    required this.displayName,
    required this.location,
    required this.plugin,
    required this.pluginInstanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PluginInstanceAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PluginInstanceAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'disable': ?disable,
      'displayName': displayName,
      'location': location,
      'plugin': plugin,
      'pluginInstanceId': pluginInstanceId,
      'project': ?project,
    };
  }

  factory PluginInstanceArgs.fromMap(Map<String, dynamic> map) {
    return PluginInstanceArgs(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginInstanceAction>(guardedValue, (value) => PluginInstanceAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disable: (() { final guardedValue = map['disable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      plugin: pulumi.Input.fromValue(map['plugin'] as String),
      pluginInstanceId: pulumi.Input.fromValue(map['pluginInstanceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

