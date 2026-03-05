// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSAccount {
  /// The Google service account ID (the part before the `@` sign in the `email`)
  final pulumi.Input<String> accountId;
  /// Whether a service account is disabled or not.
  final pulumi.Input<bool> disabled;
  /// The display name for the service account.
  final pulumi.Input<String> displayName;
  /// The e-mail address of the service account. This value
  /// should be referenced from any `gcp.organizations.getIAMPolicy` data sources
  /// that would grant the service account privileges.
  final pulumi.Input<String> email;
  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final pulumi.Input<String> member;
  /// The fully-qualified name of the service account.
  final pulumi.Input<String> name;
  /// The unique id of the service account.
  final pulumi.Input<String> uniqueId;

  /// Creates a new [GetSAccount].
  /// [accountId] The Google service account ID (the part before the `@` sign in the `email`)
  /// [disabled] Whether a service account is disabled or not.
  /// [displayName] The display name for the service account.
  /// [email] The e-mail address of the service account. This value
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [name] The fully-qualified name of the service account.
  /// [uniqueId] The unique id of the service account.
  GetSAccount({
    required this.accountId,
    required this.disabled,
    required this.displayName,
    required this.email,
    required this.member,
    required this.name,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'disabled': disabled,
      'displayName': displayName,
      'email': email,
      'member': member,
      'name': name,
      'uniqueId': uniqueId,
    };
  }

  factory GetSAccount.fromMap(Map<String, dynamic> map) {
    return GetSAccount(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      member: pulumi.Input.fromValue(map['member'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      uniqueId: pulumi.Input.fromValue(map['uniqueId'] as String),
    );
  }
}

