// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  final String? accountId;
  /// Whether a service account is disabled or not.
  final bool? disabled;
  /// The display name for the service account.
  final String? displayName;
  /// The e-mail address of the service account. This value
  /// should be referenced from any `gcp.organizations.getIAMPolicy` data sources
  /// that would grant the service account privileges.
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

  /// Creates a new [GetAccountResult].
  /// [accountId] Optional.
  /// [disabled] Whether a service account is disabled or not.
  /// [displayName] The display name for the service account.
  /// [email] The e-mail address of the service account. This value
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [name] The fully-qualified name of the service account.
  /// [project] Optional.
  /// [uniqueId] The unique id of the service account.
  const GetAccountResult({
    this.accountId,
    this.disabled,
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
      'accountId': ?accountId,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'email': ?email,
      'id': ?id,
      'member': ?member,
      'name': ?name,
      'project': ?project,
      'uniqueId': ?uniqueId,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
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
