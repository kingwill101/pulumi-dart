// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_grant_permission.dart';

/// Input properties used for looking up and filtering Plugin resources.
class PluginState {
  /// Docker Plugin alias
  final pulumi.Input<String>? alias;
  /// HTTP client timeout to enable the plugin
  final pulumi.Input<int>? enableTimeout;
  /// If `true` the plugin is enabled. Defaults to `true`
  final pulumi.Input<bool>? enabled;
  /// The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  final pulumi.Input<List<String>>? envs;
  /// If true, then the plugin is destroyed forcibly
  final pulumi.Input<bool>? forceDestroy;
  /// If true, then the plugin is disabled forcibly
  final pulumi.Input<bool>? forceDisable;
  /// If true, grant all permissions necessary to run the plugin
  final pulumi.Input<bool>? grantAllPermissions;
  /// Grant specific permissions only
  final pulumi.Input<List<PluginGrantPermission>>? grantPermissions;
  /// Docker Plugin name
  final pulumi.Input<String>? name;
  /// Docker Plugin Reference
  final pulumi.Input<String>? pluginReference;

  /// Creates a new [PluginState].
  /// [alias] Docker Plugin alias
  /// [enableTimeout] HTTP client timeout to enable the plugin
  /// [enabled] If `true` the plugin is enabled. Defaults to `true`
  /// [envs] The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  /// [forceDestroy] If true, then the plugin is destroyed forcibly
  /// [forceDisable] If true, then the plugin is disabled forcibly
  /// [grantAllPermissions] If true, grant all permissions necessary to run the plugin
  /// [grantPermissions] Grant specific permissions only
  /// [name] Docker Plugin name
  /// [pluginReference] Docker Plugin Reference
  PluginState({
    pulumi.Output<String>? alias,
    pulumi.Output<int>? enableTimeout,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<String>>? envs,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<bool>? forceDisable,
    pulumi.Output<bool>? grantAllPermissions,
    pulumi.Output<List<PluginGrantPermission>>? grantPermissions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pluginReference,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      enableTimeout = pulumi.Input.asOptionalInput<int>(enableTimeout),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      envs = pulumi.Input.asOptionalInput<List<String>>(envs),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      forceDisable = pulumi.Input.asOptionalInput<bool>(forceDisable),
      grantAllPermissions = pulumi.Input.asOptionalInput<bool>(grantAllPermissions),
      grantPermissions = pulumi.Input.asOptionalInput<List<PluginGrantPermission>>(grantPermissions),
      name = pulumi.Input.asOptionalInput<String>(name),
      pluginReference = pulumi.Input.asOptionalInput<String>(pluginReference);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'enableTimeout': ?enableTimeout,
      'enabled': ?enabled,
      'envs': ?envs,
      'forceDestroy': ?forceDestroy,
      'forceDisable': ?forceDisable,
      'grantAllPermissions': ?grantAllPermissions,
      'grantPermissions': ?pulumi.Input.mapOptionalInputValue<List<PluginGrantPermission>, List<Map<String, dynamic>>>(grantPermissions, (value) => pulumi.Input.encodeList<PluginGrantPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'pluginReference': ?pluginReference,
    };
  }

  factory PluginState.fromMap(Map<String, dynamic> map) {
    return PluginState(
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      enableTimeout: map['enableTimeout'] == null ? null : pulumi.Output.create<int>(map['enableTimeout'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      envs: map['envs'] == null ? null : pulumi.Output.create<List<String>>((map['envs'] as List).cast<String>()),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      forceDisable: map['forceDisable'] == null ? null : pulumi.Output.create<bool>(map['forceDisable'] as bool),
      grantAllPermissions: map['grantAllPermissions'] == null ? null : pulumi.Output.create<bool>(map['grantAllPermissions'] as bool),
      grantPermissions: map['grantPermissions'] == null ? null : pulumi.Output.create<List<PluginGrantPermission>>(pulumi.Input.decodeList<PluginGrantPermission>(map['grantPermissions'], (value) => PluginGrantPermission.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pluginReference: map['pluginReference'] == null ? null : pulumi.Output.create<String>(map['pluginReference'] as String),
    );
  }
}

