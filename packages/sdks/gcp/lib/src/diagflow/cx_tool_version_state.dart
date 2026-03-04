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
  /// Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/tools/&lt;ToolID&gt;/versions/&lt;VersionID&gt;.
  final pulumi.Input<String>? name;

  /// The tool to create a Version for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/tools/&lt;Tool ID&gt;.
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
    this.createTime,
    this.displayName,
    this.name,
    this.parent,
    this.tool,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'name': ?name,
      'parent': ?parent,
      'tool':
          ?pulumi.Input.mapOptionalInputValue<
            CxToolVersionTool,
            Map<String, dynamic>
          >(tool, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory CxToolVersionState.fromMap(Map<String, dynamic> map) {
    return CxToolVersionState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tool: (() {
        final guardedValue = map['tool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CxToolVersionTool.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
