// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSharedKeys.
class GetSharedKeysResult {
  /// The primary shared key of a workspace.
  final String? primarySharedKey;
  /// The secondary shared key of a workspace.
  final String? secondarySharedKey;

  /// Creates a new [GetSharedKeysResult].
  /// [primarySharedKey] The primary shared key of a workspace.
  /// [secondarySharedKey] The secondary shared key of a workspace.
  GetSharedKeysResult({
    this.primarySharedKey,
    this.secondarySharedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primarySharedKey': ?primarySharedKey,
      'secondarySharedKey': ?secondarySharedKey,
    };
  }

  factory GetSharedKeysResult.fromMap(Map<String, dynamic> map) {
    return GetSharedKeysResult(
      primarySharedKey: map['primarySharedKey'] == null ? null : map['primarySharedKey']! as String,
      secondarySharedKey: map['secondarySharedKey'] == null ? null : map['secondarySharedKey']! as String,
    );
  }
}

