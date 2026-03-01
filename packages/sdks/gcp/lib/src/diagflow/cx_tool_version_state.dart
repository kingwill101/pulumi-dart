// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool.dart';

/// Input properties used for looking up and filtering CxToolVersion resources.
class CxToolVersionState {
  /// Last time the tool version was created or modified.
  /// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? createTime;
  /// The display name of the tool version.
  final pulumi.Input<String>? displayName;
  /// The unique identifier of the tool version.
  /// Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/tools/<ToolID>/versions/<VersionID>.
  final pulumi.Input<String>? name;
  /// The tool to create a Version for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/tools/<Tool ID>.
  final pulumi.Input<String>? parent;
  /// Snapshot of the tool to be associated with this version.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionTool>? tool;
  /// Last time the tool version was created or modified.
  /// Uses RFC 3339, where generated output will always be Z-normalized and use 0, 3, 6 or 9 fractional digits.
  /// Offsets other than "Z" are also accepted.
  /// Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CxToolVersionState].
  /// [createTime] Last time the tool version was created or modified.
  /// [displayName] The display name of the tool version.
  /// [name] The unique identifier of the tool version.
  /// [parent] The tool to create a Version for.
  /// [tool] Snapshot of the tool to be associated with this version.
  /// [updateTime] Last time the tool version was created or modified.
  CxToolVersionState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<CxToolVersionTool>? tool,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      tool = pulumi.Input.asOptionalInput<CxToolVersionTool>(tool),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'name': ?name,
      'parent': ?parent,
      'tool': ?pulumi.Input.mapOptionalInputValue<CxToolVersionTool, Map<String, dynamic>>(tool, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory CxToolVersionState.fromMap(Map<String, dynamic> map) {
    return CxToolVersionState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      tool: map['tool'] == null ? null : pulumi.Output.create<CxToolVersionTool>(CxToolVersionTool.fromMap((map['tool'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

