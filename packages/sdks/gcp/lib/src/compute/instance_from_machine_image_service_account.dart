// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageServiceAccount {
  /// The service account e-mail address.
  final pulumi.Input<String>? email;
  /// A list of service scopes.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [InstanceFromMachineImageServiceAccount].
  /// [email] The service account e-mail address.
  /// [scopes] A list of service scopes.
  const InstanceFromMachineImageServiceAccount({
    this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': scopes,
    };
  }

  factory InstanceFromMachineImageServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageServiceAccount(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
