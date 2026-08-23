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
  const CredentialState({
    this.automationAccountName,
    this.description,
    this.name,
    this.password,
    this.resourceGroupName,
    this.username,
  });

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
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
