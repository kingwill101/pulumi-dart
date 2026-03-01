// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppPublishingCredentials.
class ListWebAppPublishingCredentialsResult {
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

  /// Creates a new [ListWebAppPublishingCredentialsResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [publishingPassword] Password used for publishing.
  /// [publishingPasswordHash] Password hash used for publishing.
  /// [publishingPasswordHashSalt] Password hash salt used for publishing.
  /// [publishingUserName] Username used for publishing.
  /// [scmUri] Url of SCM site.
  /// [type] Resource type.
  ListWebAppPublishingCredentialsResult({
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

  factory ListWebAppPublishingCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppPublishingCredentialsResult(
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      publishingPassword: map['publishingPassword'] == null ? null : map['publishingPassword'] as String,
      publishingPasswordHash: map['publishingPasswordHash'] == null ? null : map['publishingPasswordHash'] as String,
      publishingPasswordHashSalt: map['publishingPasswordHashSalt'] == null ? null : map['publishingPasswordHashSalt'] as String,
      publishingUserName: map['publishingUserName'] as String,
      scmUri: map['scmUri'] == null ? null : map['scmUri'] as String,
      type: map['type'] as String,
    );
  }
}

