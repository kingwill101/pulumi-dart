// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A conversion workspace's version.
class ConversionWorkspaceInfoResponse {
  /// The commit ID of the conversion workspace.
  final pulumi.Input<String> commitId;

  /// The resource name (URI) of the conversion workspace.
  final pulumi.Input<String> name;

  /// Creates a new [ConversionWorkspaceInfoResponse].
  /// [commitId] The commit ID of the conversion workspace.
  /// [name] The resource name (URI) of the conversion workspace.
  ConversionWorkspaceInfoResponse({required this.commitId, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'commitId': commitId, 'name': name};
  }

  factory ConversionWorkspaceInfoResponse.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceInfoResponse(
      commitId: pulumi.Input.fromValue(map['commitId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
