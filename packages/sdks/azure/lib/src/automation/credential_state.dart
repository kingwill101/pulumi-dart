// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Credential resources.
class CredentialState {
  /// The name of the automation account in which the Credential is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// The description associated with this Automation Credential.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password associated with this Automation Credential.
  final pulumi.Input<String>? password;
  /// The name of the resource group in which the Credential is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The username associated with this Automation Credential.
  final pulumi.Input<String>? username;

  /// Creates a new [CredentialState].
  /// [automationAccountName] The name of the automation account in which the Credential is created. Changing this forces a new resource to be created.
  /// [description] The description associated with this Automation Credential.
  /// [name] Specifies the name of the Credential. Changing this forces a new resource to be created.
  /// [password] The password associated with this Automation Credential.
  /// [resourceGroupName] The name of the resource group in which the Credential is created. Changing this forces a new resource to be created.
  /// [username] The username associated with this Automation Credential.
  CredentialState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? username,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'description': ?description,
      'name': ?name,
      'password': ?password,
      'resourceGroupName': ?resourceGroupName,
      'username': ?username,
    };
  }

  factory CredentialState.fromMap(Map<String, dynamic> map) {
    return CredentialState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

