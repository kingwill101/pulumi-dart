// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_account_account_args_doc}
class AccountArgs {
  /// The account id that is used to generate the service
  /// account email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression `a-z`
  /// to comply with RFC1035. Changing this forces a new service account to be created.
  final pulumi.Input<String>? accountId;
  /// If set to true, skip service account creation if a service account with the same email already exists.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A text description of the service account.
  /// Must be less than or equal to 256 UTF-8 bytes.
  final pulumi.Input<String>? description;
  /// Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// Must be set after creation to disable a service account.
  final pulumi.Input<bool>? disabled;
  /// The display name for the service account.
  /// Can be updated without creating a new resource.
  final pulumi.Input<String>? displayName;
  /// The ID of the project that the service account will be created in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String>? project;

  /// Creates a new [AccountArgs].
  /// [accountId] The account id that is used to generate the service
  /// [createIgnoreAlreadyExists] If set to true, skip service account creation if a service account with the same email already exists.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] A text description of the service account.
  /// [disabled] Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// [displayName] The display name for the service account.
  /// [project] The ID of the project that the service account will be created in.
  const AccountArgs({
    this.accountId,
    this.createIgnoreAlreadyExists,
    this.deletionPolicy,
    this.description,
    this.disabled,
    this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'project': ?project,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createIgnoreAlreadyExists: (() { final guardedValue = map['createIgnoreAlreadyExists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
