// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefaultServiceAccount.
class GetDefaultServiceAccountResult {
  /// The display name for the service account.
  final String? displayName;
  /// Email address of the default service account used by VMs running in this project
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String? member;
  /// The fully-qualified name of the service account.
  final String? name;
  final String? project;
  /// The unique id of the service account.
  final String? uniqueId;

  /// Creates a new [GetDefaultServiceAccountResult].
  /// [displayName] The display name for the service account.
  /// [email] Email address of the default service account used by VMs running in this project
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [name] The fully-qualified name of the service account.
  /// [project] Optional.
  /// [uniqueId] The unique id of the service account.
  const GetDefaultServiceAccountResult({
    this.displayName,
    this.email,
    this.id,
    this.member,
    this.name,
    this.project,
    this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': ?email,
      'id': ?id,
      'member': ?member,
      'name': ?name,
      'project': ?project,
      'uniqueId': ?uniqueId,
    };
  }

  factory GetDefaultServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultServiceAccountResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
