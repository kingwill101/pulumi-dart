// ignore_for_file: unused_element, unnecessary_cast


/// Details of the customer managed key associated with the workspace
class WorkspaceKeyDetails {
  /// Workspace Key sub-resource key vault url
  final String? keyVaultUrl;
  /// Workspace Key sub-resource name
  final String? name;

  /// Creates a new [WorkspaceKeyDetails].
  /// [keyVaultUrl] Workspace Key sub-resource key vault url
  /// [name] Workspace Key sub-resource name
  WorkspaceKeyDetails({
    this.keyVaultUrl,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUrl': ?keyVaultUrl,
      'name': ?name,
    };
  }

  factory WorkspaceKeyDetails.fromMap(Map<String, dynamic> map) {
    return WorkspaceKeyDetails(
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

