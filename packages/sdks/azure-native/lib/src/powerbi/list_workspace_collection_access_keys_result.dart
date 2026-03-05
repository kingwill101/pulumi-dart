// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceCollectionAccessKeys.
class ListWorkspaceCollectionAccessKeysResult {
  /// Access key 1
  final String? key1;
  /// Access key 2
  final String? key2;

  /// Creates a new [ListWorkspaceCollectionAccessKeysResult].
  /// [key1] Access key 1
  /// [key2] Access key 2
  ListWorkspaceCollectionAccessKeysResult({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory ListWorkspaceCollectionAccessKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceCollectionAccessKeysResult(
      key1: (() { final guardedValue = map['key1']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key2: (() { final guardedValue = map['key2']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

