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
  const GetSharedKeysResult({
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
      primarySharedKey: (() { final guardedValue = map['primarySharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondarySharedKey: (() { final guardedValue = map['secondarySharedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
