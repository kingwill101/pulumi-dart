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
  const AdditionalWorkspacesPropertiesResponse({
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
      dataTypes: (() { final guardedValue = map['dataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

