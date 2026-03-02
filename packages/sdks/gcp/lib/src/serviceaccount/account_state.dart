// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The account id that is used to generate the service
  /// account email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression `a-z`
  /// to comply with RFC1035. Changing this forces a new service account to be created.
  final pulumi.Input<String>? accountId;
  /// If set to true, skip service account creation if a service account with the same email already exists.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;
  /// A text description of the service account.
  /// Must be less than or equal to 256 UTF-8 bytes.
  final pulumi.Input<String>? description;
  /// Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// Must be set after creation to disable a service account.
  final pulumi.Input<bool>? disabled;
  /// The display name for the service account.
  /// Can be updated without creating a new resource.
  final pulumi.Input<String>? displayName;
  /// The e-mail address of the service account. This value
  /// should be referenced from any `gcp.organizations.getIAMPolicy` data sources
  /// that would grant the service account privileges.
  final pulumi.Input<String>? email;
  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final pulumi.Input<String>? member;
  /// The fully-qualified name of the service account.
  final pulumi.Input<String>? name;
  /// The ID of the project that the service account will be created in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String>? project;
  /// The unique id of the service account.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [AccountState].
  /// [accountId] The account id that is used to generate the service
  /// [createIgnoreAlreadyExists] If set to true, skip service account creation if a service account with the same email already exists.
  /// [description] A text description of the service account.
  /// [disabled] Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// [displayName] The display name for the service account.
  /// [email] The e-mail address of the service account. This value
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [name] The fully-qualified name of the service account.
  /// [project] The ID of the project that the service account will be created in.
  /// [uniqueId] The unique id of the service account.
  AccountState({
    this.accountId,
    this.createIgnoreAlreadyExists,
    this.description,
    this.disabled,
    this.displayName,
    this.email,
    this.member,
    this.name,
    this.project,
    this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'email': ?email,
      'member': ?member,
      'name': ?name,
      'project': ?project,
      'uniqueId': ?uniqueId,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null ? null : (map['createIgnoreAlreadyExists']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      member: map['member'] == null ? null : (map['member']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      uniqueId: map['uniqueId'] == null ? null : (map['uniqueId']! as String).input(),
    );
  }
}

