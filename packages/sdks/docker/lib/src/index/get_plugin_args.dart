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
  GetPluginArgs({
    pulumi.Output<String>? alias,
    pulumi.Output<String>? id,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      id = pulumi.Input.asOptionalInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'id': ?id,
    };
  }

  factory GetPluginArgs.fromMap(Map<String, dynamic> map) {
    return GetPluginArgs(
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
    );
  }
}

