// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the additional workspaces.
class AdditionalWorkspacesPropertiesResponse {
  /// List of data types sent to workspace
  final pulumi.Input<List<String>>? dataTypes;
  /// Workspace type.
  final pulumi.Input<String>? type;
  /// Workspace resource id
  final pulumi.Input<String>? workspace;

  /// Creates a new [AdditionalWorkspacesPropertiesResponse].
  /// [dataTypes] List of data types sent to workspace
  /// [type] Workspace type.
  /// [workspace] Workspace resource id
  AdditionalWorkspacesPropertiesResponse({
    this.dataTypes,
    this.type,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTypes': ?dataTypes,
      'type': ?type,
      'workspace': ?workspace,
    };
  }

  factory AdditionalWorkspacesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalWorkspacesPropertiesResponse(
      dataTypes: map['dataTypes'] == null ? null : ((map['dataTypes']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      workspace: map['workspace'] == null ? null : (map['workspace']! as String).input(),
    );
  }
}

