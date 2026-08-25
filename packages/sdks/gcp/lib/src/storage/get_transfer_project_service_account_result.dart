// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTransferProjectServiceAccount.
class GetTransferProjectServiceAccountResult {
  /// Email address of the default service account used by Storage Transfer Jobs running in this project.
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String? member;
  final String? project;
  /// Unique identifier for the service account.
  final String? subjectId;

  /// Creates a new [GetTransferProjectServiceAccountResult].
  /// [email] Email address of the default service account used by Storage Transfer Jobs running in this project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [project] Optional.
  /// [subjectId] Unique identifier for the service account.
  const GetTransferProjectServiceAccountResult({
    this.email,
    this.id,
    this.member,
    this.project,
    this.subjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'id': ?id,
      'member': ?member,
      'project': ?project,
      'subjectId': ?subjectId,
    };
  }

  factory GetTransferProjectServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetTransferProjectServiceAccountResult(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subjectId: (() { final guardedValue = map['subjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
