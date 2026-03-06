// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_grant_permission.dart';

/// {@template pulumi_index_plugin_plugin_args_doc}
/// The set of arguments for Plugin.
/// {@endtemplate}
/// {@macro pulumi_index_plugin_plugin_args_doc}
class PluginArgs {
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

  /// Creates a new [PluginArgs].
  /// [alias] Docker Plugin alias
  /// [enableTimeout] HTTP client timeout to enable the plugin
  /// [enabled] If `true` the plugin is enabled. Defaults to `true`
  /// [envs] The environment variables in the form of `KEY=VALUE`, e.g. `DEBUG=0`
  /// [forceDestroy] If true, then the plugin is destroyed forcibly
  /// [forceDisable] If true, then the plugin is disabled forcibly
  /// [grantAllPermissions] If true, grant all permissions necessary to run the plugin
  /// [grantPermissions] Grant specific permissions only
  /// [name] Docker Plugin name
  const PluginArgs({
    this.alias,
    this.enableTimeout,
    this.enabled,
    this.envs,
    this.forceDestroy,
    this.forceDisable,
    this.grantAllPermissions,
    this.grantPermissions,
    this.name,
  });

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
    };
  }

  factory PluginArgs.fromMap(Map<String, dynamic> map) {
    return PluginArgs(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableTimeout: (() { final guardedValue = map['enableTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      envs: (() { final guardedValue = map['envs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDisable: (() { final guardedValue = map['forceDisable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grantAllPermissions: (() { final guardedValue = map['grantAllPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      grantPermissions: (() { final guardedValue = map['grantPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PluginGrantPermission>(guardedValue, (value) => PluginGrantPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

