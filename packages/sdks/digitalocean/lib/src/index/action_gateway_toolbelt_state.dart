// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActionGatewayToolbelt resources.
class ActionGatewayToolbeltState {
  /// When the toolbelt was created.
  final pulumi.Input<String?>? createdAt;
  /// A description of the toolbelt, at most 255 bytes. Changing this forces a new toolbelt.
  final pulumi.Input<String?>? description;
  /// A human-readable label for the toolbelt, at most 128 bytes. Changing this forces a new toolbelt.
  final pulumi.Input<String?>? displayName;
  /// The name of the toolbelt, unique among your team's active toolbelts. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9_-]`. `search` is reserved. Changing this forces a new toolbelt.
  final pulumi.Input<String?>? name;
  /// The members of the current version, each pinned as `&lt;tool_slug&gt;@&lt;version&gt;`.
  final pulumi.Input<List<String>?>? pinnedTools;
  /// The version-pinned reference to the toolbelt, such as `search-toolbelt@2`. Sessions reference it as `toolbelt:&lt;reference&gt;`.
  final pulumi.Input<String?>? reference;
  /// The reference to the latest version of the toolbelt.
  final pulumi.Input<String?>? referenceLatest;
  /// The status of the toolbelt.
  final pulumi.Input<String?>? status;
  /// The number of tools in the toolbelt.
  final pulumi.Input<int?>? toolCount;
  /// The catalog tool slugs in the toolbelt, such as `exaWebSearch`. Each may be pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, and a pin must equal the tool's current released version. An unpinned tool is pinned to its current released version when it is added. Changing the tools creates a new version of the toolbelt.
  final pulumi.Input<List<String>?>? tools;
  /// When the toolbelt was last modified.
  final pulumi.Input<String?>? updatedAt;
  /// The current version of the toolbelt.
  final pulumi.Input<String?>? version;

  /// Creates a new [ActionGatewayToolbeltState].
  /// [createdAt] When the toolbelt was created.
  /// [description] A description of the toolbelt, at most 255 bytes. Changing this forces a new toolbelt.
  /// [displayName] A human-readable label for the toolbelt, at most 128 bytes. Changing this forces a new toolbelt.
  /// [name] The name of the toolbelt, unique among your team's active toolbelts. It must start with a lowercase letter and contain at most 64 characters from `[a-z0-9_-]`. `search` is reserved. Changing this forces a new toolbelt.
  /// [pinnedTools] The members of the current version, each pinned as `&lt;tool_slug&gt;@&lt;version&gt;`.
  /// [reference] The version-pinned reference to the toolbelt, such as `search-toolbelt@2`. Sessions reference it as `toolbelt:&lt;reference&gt;`.
  /// [referenceLatest] The reference to the latest version of the toolbelt.
  /// [status] The status of the toolbelt.
  /// [toolCount] The number of tools in the toolbelt.
  /// [tools] The catalog tool slugs in the toolbelt, such as `exaWebSearch`. Each may be pinned as `&lt;tool_slug&gt;@&lt;version&gt;`, and a pin must equal the tool's current released version. An unpinned tool is pinned to its current released version when it is added. Changing the tools creates a new version of the toolbelt.
  /// [updatedAt] When the toolbelt was last modified.
  /// [version] The current version of the toolbelt.
  const ActionGatewayToolbeltState({
    this.createdAt,
    this.description,
    this.displayName,
    this.name,
    this.pinnedTools,
    this.reference,
    this.referenceLatest,
    this.status,
    this.toolCount,
    this.tools,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'pinnedTools': ?pinnedTools,
      'reference': ?reference,
      'referenceLatest': ?referenceLatest,
      'status': ?status,
      'toolCount': ?toolCount,
      'tools': ?tools,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory ActionGatewayToolbeltState.fromMap(Map<String, dynamic> map) {
    return ActionGatewayToolbeltState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pinnedTools: (() { final guardedValue = map['pinnedTools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceLatest: (() { final guardedValue = map['referenceLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolCount: (() { final guardedValue = map['toolCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
