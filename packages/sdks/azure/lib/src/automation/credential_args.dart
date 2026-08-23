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
  const CredentialArgs({
    required this.automationAccountName,
    this.description,
    this.name,
    required this.password,
    required this.resourceGroupName,
    required this.username,
  });

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
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
