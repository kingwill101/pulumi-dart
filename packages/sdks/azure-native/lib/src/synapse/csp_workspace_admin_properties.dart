// ignore_for_file: unused_element, unnecessary_cast


/// Initial workspace AAD admin properties for a CSP subscription
class CspWorkspaceAdminProperties {
  /// AAD object ID of initial workspace admin
  final String? initialWorkspaceAdminObjectId;

  /// Creates a new [CspWorkspaceAdminProperties].
  /// [initialWorkspaceAdminObjectId] AAD object ID of initial workspace admin
  CspWorkspaceAdminProperties({
    this.initialWorkspaceAdminObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialWorkspaceAdminObjectId': ?initialWorkspaceAdminObjectId,
    };
  }

  factory CspWorkspaceAdminProperties.fromMap(Map<String, dynamic> map) {
    return CspWorkspaceAdminProperties(
      initialWorkspaceAdminObjectId: map['initialWorkspaceAdminObjectId'] == null ? null : map['initialWorkspaceAdminObjectId'] as String,
    );
  }
}

