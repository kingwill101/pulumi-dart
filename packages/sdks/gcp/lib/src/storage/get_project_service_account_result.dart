// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectServiceAccount.
class GetProjectServiceAccountResult {
  /// The email address of the service account. This value is often used to refer to the service account
  /// in order to grant IAM permissions.
  final String emailAddress;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Identity of the service account in the form `serviceAccount:{email_address}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String member;
  final String project;
  final String? userProject;

  /// Creates a new [GetProjectServiceAccountResult].
  /// [emailAddress] The email address of the service account. This value is often used to refer to the service account
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [member] The Identity of the service account in the form `serviceAccount:{email_address}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [project] Required.
  /// [userProject] Optional.
  const GetProjectServiceAccountResult({
    required this.emailAddress,
    required this.id,
    required this.member,
    required this.project,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'id': id,
      'member': member,
      'project': project,
      'userProject': ?userProject,
    };
  }

  factory GetProjectServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountResult(
      emailAddress: map['emailAddress'] as String,
      id: map['id'] as String,
      member: map['member'] as String,
      project: map['project'] as String,
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
