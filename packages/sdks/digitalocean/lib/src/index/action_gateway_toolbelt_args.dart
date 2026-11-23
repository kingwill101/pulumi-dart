// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_action_gateway_toolbelt_action_gateway_toolbelt_args_doc}
/// The set of arguments for ActionGatewayToolbelt.
/// {@endtemplate}
/// {@macro pulumi_index_action_gateway_toolbelt_action_gateway_toolbelt_args_doc}
class ActionGatewayToolbeltArgs {
  /// A description of the toolbelt, at most 255 bytes. Changing this forces a new toolbelt.
  final pulumi.Input<String?>? description;
  /// A human-readable label for the toolbelt, at most 128 bytes. Changing this forces a new toolbelt.
  final pulumi.Input<String?>? displayName;
  /// The name of the toolbelt, unique among your team's active toolbelts. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9_-]`. `search` is reserved. Changing this forces a new toolbelt.
  final pulumi.Input<String?>? name;
  /// The catalog tool slugs in the toolbelt, such as `exaWebSearch`. Each may be pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, and a pin must equal the tool's current released version. An unpinned tool is pinned to its current released version when it is added. Changing the tools creates a new version of the toolbelt.
  final pulumi.Input<List<String>?>? tools;

  /// Creates a new [ActionGatewayToolbeltArgs].
  /// [description] A description of the toolbelt, at most 255 bytes. Changing this forces a new toolbelt.
  /// [displayName] A human-readable label for the toolbelt, at most 128 bytes. Changing this forces a new toolbelt.
  /// [name] The name of the toolbelt, unique among your team's active toolbelts. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9_-]`. `search` is reserved. Changing this forces a new toolbelt.
  /// [tools] The catalog tool slugs in the toolbelt, such as `exaWebSearch`. Each may be pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, and a pin must equal the tool's current released version. An unpinned tool is pinned to its current released version when it is added. Changing the tools creates a new version of the toolbelt.
  const ActionGatewayToolbeltArgs({
    this.description,
    this.displayName,
    this.name,
    this.tools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'tools': ?tools,
    };
  }

  factory ActionGatewayToolbeltArgs.fromMap(Map<String, dynamic> map) {
    return ActionGatewayToolbeltArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
