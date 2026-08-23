// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceAccount.
class GetServiceAccountResult {
  /// Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
  final String description;
  /// Whether the service account is disabled.
  final bool disabled;
  /// Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
  final String displayName;
  /// The email address of the service account.
  final String email;
  /// Deprecated. Do not use.
  final String etag;
  /// The resource name of the service account. Use one of the following formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` * `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you can use the `-` wildcard character instead of the project ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}` * `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the `-` wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to access the service account `projects/-/serviceAccounts/fake@example.com`, which does not exist, the response contains an HTTP `403 Forbidden` error instead of a `404 Not Found` error.
  final String name;
  /// The OAuth 2.0 client ID for the service account.
  final String oauth2ClientId;
  /// The ID of the project that owns the service account.
  final String project;
  /// The unique, stable numeric ID for the service account. Each service account retains its unique ID even if you delete the service account. For example, if you delete a service account, then create a new service account with the same name, the new service account has a different unique ID than the deleted service account.
  final String uniqueId;

  /// Creates a new [GetServiceAccountResult].
  /// [description] Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
  /// [disabled] Whether the service account is disabled.
  /// [displayName] Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
  /// [email] The email address of the service account.
  /// [etag] Deprecated. Do not use.
  /// [name] The resource name of the service account. Use one of the following formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` * `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you can use the `-` wildcard character instead of the project ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}` * `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the `-` wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to access the service account `projects/-/serviceAccounts/fake@example.com`, which does not exist, the response contains an HTTP `403 Forbidden` error instead of a `404 Not Found` error.
  /// [oauth2ClientId] The OAuth 2.0 client ID for the service account.
  /// [project] The ID of the project that owns the service account.
  /// [uniqueId] The unique, stable numeric ID for the service account. Each service account retains its unique ID even if you delete the service account. For example, if you delete a service account, then create a new service account with the same name, the new service account has a different unique ID than the deleted service account.
  const GetServiceAccountResult({
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.email,
    required this.etag,
    required this.name,
    required this.oauth2ClientId,
    required this.project,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'disabled': disabled,
      'displayName': displayName,
      'email': email,
      'etag': etag,
      'name': name,
      'oauth2ClientId': oauth2ClientId,
      'project': project,
      'uniqueId': uniqueId,
    };
  }

  factory GetServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountResult(
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      oauth2ClientId: map['oauth2ClientId'] as String,
      project: map['project'] as String,
      uniqueId: map['uniqueId'] as String,
    );
  }
}
