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
    pulumi.Output<String>? accountId,
    pulumi.Output<bool>? createIgnoreAlreadyExists,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? email,
    pulumi.Output<String>? member,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? uniqueId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      createIgnoreAlreadyExists = pulumi.Input.asOptionalInput<bool>(createIgnoreAlreadyExists),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      email = pulumi.Input.asOptionalInput<String>(email),
      member = pulumi.Input.asOptionalInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null ? null : pulumi.Output.create<bool>(map['createIgnoreAlreadyExists'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
    );
  }
}

