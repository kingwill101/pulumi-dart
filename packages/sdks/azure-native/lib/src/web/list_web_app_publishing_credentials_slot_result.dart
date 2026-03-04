// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listWebAppPublishingCredentialsSlot.
class ListWebAppPublishingCredentialsSlotResult {
  /// Resource Id.
  final String id;

  /// Kind of resource.
  final String? kind;

  /// Resource Name.
  final String name;

  /// Password used for publishing.
  final String? publishingPassword;

  /// Password hash used for publishing.
  final String? publishingPasswordHash;

  /// Password hash salt used for publishing.
  final String? publishingPasswordHashSalt;

  /// Username used for publishing.
  final String publishingUserName;

  /// Url of SCM site.
  final String? scmUri;

  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppPublishingCredentialsSlotResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [publishingPassword] Password used for publishing.
  /// [publishingPasswordHash] Password hash used for publishing.
  /// [publishingPasswordHashSalt] Password hash salt used for publishing.
  /// [publishingUserName] Username used for publishing.
  /// [scmUri] Url of SCM site.
  /// [type] Resource type.
  ListWebAppPublishingCredentialsSlotResult({
    required this.id,
    this.kind,
    required this.name,
    this.publishingPassword,
    this.publishingPasswordHash,
    this.publishingPasswordHashSalt,
    required this.publishingUserName,
    this.scmUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'publishingPassword': ?publishingPassword,
      'publishingPasswordHash': ?publishingPasswordHash,
      'publishingPasswordHashSalt': ?publishingPasswordHashSalt,
      'publishingUserName': publishingUserName,
      'scmUri': ?scmUri,
      'type': type,
    };
  }

  factory ListWebAppPublishingCredentialsSlotResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWebAppPublishingCredentialsSlotResult(
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      publishingPassword: (() {
        final guardedValue = map['publishingPassword'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publishingPasswordHash: (() {
        final guardedValue = map['publishingPasswordHash'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publishingPasswordHashSalt: (() {
        final guardedValue = map['publishingPasswordHashSalt'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      publishingUserName: map['publishingUserName'] as String,
      scmUri: (() {
        final guardedValue = map['scmUri'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
