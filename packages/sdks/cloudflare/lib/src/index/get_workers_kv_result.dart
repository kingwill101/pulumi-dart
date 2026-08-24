// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkersKv.
class GetWorkersKvResult {
  /// Identifier.
  final String? accountId;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final String? id;
  /// A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  final String? keyName;
  /// Namespace identifier tag.
  final String? namespaceId;
  final String? value;

  /// Creates a new [GetWorkersKvResult].
  /// [accountId] Identifier.
  /// [id] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [keyName] A key's name. The name may be at most 512 bytes. All printable, non-whitespace characters are valid. Use percent-encoding to define key names as part of a URL.
  /// [namespaceId] Namespace identifier tag.
  /// [value] Optional.
  const GetWorkersKvResult({
    this.accountId,
    this.id,
    this.keyName,
    this.namespaceId,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'keyName': ?keyName,
      'namespaceId': ?namespaceId,
      'value': ?value,
    };
  }

  factory GetWorkersKvResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
