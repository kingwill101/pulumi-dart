// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultServiceAccount.
class GetDefaultServiceAccountResult {
  /// The display name for the service account.
  final String displayName;

  /// Email address of the default service account used by App Engine in this project.
  final String email;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String member;

  /// The fully-qualified name of the service account.
  final String name;
  final String project;

  /// The unique id of the service account.
  final String uniqueId;

  /// Creates a new [GetDefaultServiceAccountResult].
  /// [displayName] The display name for the service account.
  /// [email] Email address of the default service account used by App Engine in this project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [name] The fully-qualified name of the service account.
  /// [project] Required.
  /// [uniqueId] The unique id of the service account.
  GetDefaultServiceAccountResult({
    required this.displayName,
    required this.email,
    required this.id,
    required this.member,
    required this.name,
    required this.project,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
      'id': id,
      'member': member,
      'name': name,
      'project': project,
      'uniqueId': uniqueId,
    };
  }

  factory GetDefaultServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultServiceAccountResult(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      member: map['member'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      uniqueId: map['uniqueId'] as String,
    );
  }
}
