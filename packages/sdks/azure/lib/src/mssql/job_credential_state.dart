// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobCredential resources.
class JobCredentialState {
  /// The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created.
  final pulumi.Input<String>? jobAgentId;
  /// The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created.
  final pulumi.Input<String>? name;
  /// The password to use for this Elastic Job credential.
  final pulumi.Input<String>? password;
  /// An integer value used to trigger an update for `password_wo`. This property should be incremented when updating `password_wo`.
  final pulumi.Input<int>? passwordWoVersion;
  /// The username to use for this Elastic Job credential.
  final pulumi.Input<String>? username;

  /// Creates a new [JobCredentialState].
  /// [jobAgentId] The ID of the Elastic Job Agent. Changing this forces a new Elastic Job Credential to be created.
  /// [name] The name which should be used for this Elastic Job Credential. Changing this forces a new Elastic Job Credential to be created.
  /// [password] The password to use for this Elastic Job credential.
  /// [passwordWoVersion] An integer value used to trigger an update for `password_wo`. This property should be incremented when updating `password_wo`.
  /// [username] The username to use for this Elastic Job credential.
  JobCredentialState({
    this.jobAgentId,
    this.name,
    this.password,
    this.passwordWoVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentId': ?jobAgentId,
      'name': ?name,
      'password': ?password,
      'passwordWoVersion': ?passwordWoVersion,
      'username': ?username,
    };
  }

  factory JobCredentialState.fromMap(Map<String, dynamic> map) {
    return JobCredentialState(
      jobAgentId: (() { final guardedValue = map['jobAgentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

