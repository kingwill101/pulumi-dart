// ignore_for_file: unused_element, unnecessary_cast


/// Details of the customer managed key associated with the workspace
class WorkspaceKeyDetailsResponse {
  /// Workspace Key sub-resource key vault url
  final String? keyVaultUrl;
  /// Workspace Key sub-resource name
  final String? name;

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
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

