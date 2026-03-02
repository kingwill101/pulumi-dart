// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the customer managed key associated with the workspace
class WorkspaceKeyDetailsResponse {
  /// Workspace Key sub-resource key vault url
  final pulumi.Input<String>? keyVaultUrl;
  /// Workspace Key sub-resource name
  final pulumi.Input<String>? name;

  /// Creates a new [WorkspaceKeyDetailsResponse].
  /// [keyVaultUrl] Workspace Key sub-resource key vault url
  /// [name] Workspace Key sub-resource name
  WorkspaceKeyDetailsResponse({
    this.keyVaultUrl,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUrl': ?keyVaultUrl,
      'name': ?name,
    };
  }

  factory WorkspaceKeyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceKeyDetailsResponse(
      keyVaultUrl: map['keyVaultUrl'] == null ? null : (map['keyVaultUrl'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

