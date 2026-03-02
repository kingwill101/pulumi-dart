// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateServiceAccount {
  /// The service account e-mail address.
  final pulumi.Input<String>? email;
  /// A list of service scopes.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [InstanceFromTemplateServiceAccount].
  /// [email] The service account e-mail address.
  /// [scopes] A list of service scopes.
  InstanceFromTemplateServiceAccount({
    this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': scopes,
    };
  }

  factory InstanceFromTemplateServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateServiceAccount(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      scopes: ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

