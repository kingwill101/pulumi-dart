// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectServiceAccount.
class GetProjectServiceAccountResult {
  /// The email address of the service account. This value is
  /// often used to refer to the service account in order to grant IAM permissions.
  final String? accountEmail;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Access Approval service account resource name. Format is "projects/{project_id}/serviceAccount".
  final String? name;
  final String? projectId;

  /// Creates a new [GetProjectServiceAccountResult].
  /// [accountEmail] The email address of the service account. This value is
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The Access Approval service account resource name. Format is "projects/{project_id}/serviceAccount".
  /// [projectId] Optional.
  const GetProjectServiceAccountResult({
    this.accountEmail,
    this.id,
    this.name,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEmail': ?accountEmail,
      'id': ?id,
      'name': ?name,
      'projectId': ?projectId,
    };
  }

  factory GetProjectServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountResult(
      accountEmail: (() { final guardedValue = map['accountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
