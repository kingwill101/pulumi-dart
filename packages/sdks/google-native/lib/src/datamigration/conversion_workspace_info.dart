// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A conversion workspace's version.
class ConversionWorkspaceInfo {
  /// The commit ID of the conversion workspace.
  final pulumi.Input<String>? commitId;
  /// The resource name (URI) of the conversion workspace.
  final pulumi.Input<String>? name;

  /// Creates a new [ConversionWorkspaceInfo].
  /// [commitId] The commit ID of the conversion workspace.
  /// [name] The resource name (URI) of the conversion workspace.
  const ConversionWorkspaceInfo({
    this.commitId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitId': ?commitId,
      'name': ?name,
    };
  }

  factory ConversionWorkspaceInfo.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceInfo(
      commitId: (() { final guardedValue = map['commitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

