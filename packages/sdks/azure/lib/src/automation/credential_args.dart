// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_credential_credential_args_doc}
/// The set of arguments for Credential.
/// {@endtemplate}
/// {@macro pulumi_automation_credential_credential_args_doc}
class CredentialArgs {
  /// The name of the automation account in which the Credential is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// The description associated with this Automation Credential.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password associated with this Automation Credential.
  final pulumi.Input<String> password;
  /// The name of the resource group in which the Credential is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The username associated with this Automation Credential.
  final pulumi.Input<String> username;

  /// Creates a new [CredentialArgs].
  /// [automationAccountName] The name of the automation account in which the Credential is created. Changing this forces a new resource to be created.
  /// [description] The description associated with this Automation Credential.
  /// [name] Specifies the name of the Credential. Changing this forces a new resource to be created.
  /// [password] The password associated with this Automation Credential.
  /// [resourceGroupName] The name of the resource group in which the Credential is created. Changing this forces a new resource to be created.
  /// [username] The username associated with this Automation Credential.
  CredentialArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> password,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> username,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': ?description,
      'name': ?name,
      'password': password,
      'resourceGroupName': resourceGroupName,
      'username': username,
    };
  }

  factory CredentialArgs.fromMap(Map<String, dynamic> map) {
    return CredentialArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

