// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCallsSfuApp.
class GetCallsSfuAppResult {
  /// The account identifier tag.
  final String? accountId;
  /// A Cloudflare-generated unique identifier for a item.
  final String? appId;
  /// The date and time the item was created.
  final String? created;
  /// The date and time the item was last modified.
  final String? modified;
  /// A short description of Calls app, not shown to end users.
  final String? name;
  /// A Cloudflare-generated unique identifier for a item.
  final String? uid;

  /// Creates a new [GetCallsSfuAppResult].
  /// [accountId] The account identifier tag.
  /// [appId] A Cloudflare-generated unique identifier for a item.
  /// [created] The date and time the item was created.
  /// [modified] The date and time the item was last modified.
  /// [name] A short description of Calls app, not shown to end users.
  /// [uid] A Cloudflare-generated unique identifier for a item.
  const GetCallsSfuAppResult({
    this.accountId,
    this.appId,
    this.created,
    this.modified,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'created': ?created,
      'modified': ?modified,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory GetCallsSfuAppResult.fromMap(Map<String, dynamic> map) {
    return GetCallsSfuAppResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
