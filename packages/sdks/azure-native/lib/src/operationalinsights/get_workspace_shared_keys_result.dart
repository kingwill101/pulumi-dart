// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceSharedKeys.
class GetWorkspaceSharedKeysResult {
  /// The primary shared key of a workspace.
  final String? primarySharedKey;
  /// The secondary shared key of a workspace.
  final String? secondarySharedKey;

  /// Creates a new [GetWorkspaceSharedKeysResult].
  /// [primarySharedKey] The primary shared key of a workspace.
  /// [secondarySharedKey] The secondary shared key of a workspace.
  GetWorkspaceSharedKeysResult({
    this.primarySharedKey,
    this.secondarySharedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primarySharedKey': ?primarySharedKey,
      'secondarySharedKey': ?secondarySharedKey,
    };
  }

  factory GetWorkspaceSharedKeysResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSharedKeysResult(
      primarySharedKey: map['primarySharedKey'] == null ? null : map['primarySharedKey']! as String,
      secondarySharedKey: map['secondarySharedKey'] == null ? null : map['secondarySharedKey']! as String,
    );
  }
}

