// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanExecutionIdentityServiceAccount {
  /// Service account email.
  final pulumi.Input<String> email;

  /// Creates a new [DatascanExecutionIdentityServiceAccount].
  /// [email] Service account email.
  const DatascanExecutionIdentityServiceAccount({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory DatascanExecutionIdentityServiceAccount.fromMap(Map<String, dynamic> map) {
    return DatascanExecutionIdentityServiceAccount(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
