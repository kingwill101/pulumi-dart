// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustAccessTag.
class GetZeroTrustAccessTagResult {
  /// Identifier.
  final String? accountId;
  /// The name of the tag
  final String? id;
  /// The name of the tag
  final String? name;
  /// The name of the tag
  final String? tagName;

  /// Creates a new [GetZeroTrustAccessTagResult].
  /// [accountId] Identifier.
  /// [id] The name of the tag
  /// [name] The name of the tag
  /// [tagName] The name of the tag
  const GetZeroTrustAccessTagResult({
    this.accountId,
    this.id,
    this.name,
    this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'name': ?name,
      'tagName': ?tagName,
    };
  }

  factory GetZeroTrustAccessTagResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessTagResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
