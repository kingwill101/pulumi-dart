// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustAccessCustomPage.
class GetZeroTrustAccessCustomPageResult {
  /// Identifier.
  final String? accountId;
  /// Custom page HTML.
  final String? customHtml;
  /// UUID.
  final String? customPageId;
  /// UUID.
  final String? id;
  /// Custom page name.
  final String? name;
  /// Custom page type.
  /// Available values: "identityDenied", "forbidden".
  final String? type;
  /// UUID.
  final String? uid;

  /// Creates a new [GetZeroTrustAccessCustomPageResult].
  /// [accountId] Identifier.
  /// [customHtml] Custom page HTML.
  /// [customPageId] UUID.
  /// [id] UUID.
  /// [name] Custom page name.
  /// [type] Custom page type.
  /// [uid] UUID.
  const GetZeroTrustAccessCustomPageResult({
    this.accountId,
    this.customHtml,
    this.customPageId,
    this.id,
    this.name,
    this.type,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'customHtml': ?customHtml,
      'customPageId': ?customPageId,
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'uid': ?uid,
    };
  }

  factory GetZeroTrustAccessCustomPageResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessCustomPageResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customHtml: (() { final guardedValue = map['customHtml']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customPageId: (() { final guardedValue = map['customPageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
