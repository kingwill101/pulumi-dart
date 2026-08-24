// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCallsTurnApp.
class GetCallsTurnAppResult {
  /// The account identifier tag.
  final String? accountId;
  /// The date and time the item was created.
  final String? created;
  /// A Cloudflare-generated unique identifier for a item.
  final String? keyId;
  /// The date and time the item was last modified.
  final String? modified;
  /// A short description of Calls app, not shown to end users.
  final String? name;
  /// A Cloudflare-generated unique identifier for a item.
  final String? uid;

  /// Creates a new [GetCallsTurnAppResult].
  /// [accountId] The account identifier tag.
  /// [created] The date and time the item was created.
  /// [keyId] A Cloudflare-generated unique identifier for a item.
  /// [modified] The date and time the item was last modified.
  /// [name] A short description of Calls app, not shown to end users.
  /// [uid] A Cloudflare-generated unique identifier for a item.
  const GetCallsTurnAppResult({
    this.accountId,
    this.created,
    this.keyId,
    this.modified,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'keyId': ?keyId,
      'modified': ?modified,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory GetCallsTurnAppResult.fromMap(Map<String, dynamic> map) {
    return GetCallsTurnAppResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
