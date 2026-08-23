// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_plugin_get_plugin_args_doc}
/// Arguments for getPlugin.
/// {@endtemplate}
/// {@macro pulumi_index_get_plugin_get_plugin_args_doc}
class GetPluginArgs {
  /// The alias of the Docker plugin. If the tag is omitted, `:latest` is complemented to the attribute value.
  final pulumi.Input<String>? alias;
  /// The ID of the plugin, which has precedence over the `alias` of both are given
  final pulumi.Input<String>? id;

  /// Creates a new [GetPluginArgs].
  /// [alias] The alias of the Docker plugin. If the tag is omitted, `:latest` is complemented to the attribute value.
  /// [id] The ID of the plugin, which has precedence over the `alias` of both are given
  const GetPluginArgs({
    this.alias,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'id': ?id,
    };
  }

  factory GetPluginArgs.fromMap(Map<String, dynamic> map) {
    return GetPluginArgs(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
