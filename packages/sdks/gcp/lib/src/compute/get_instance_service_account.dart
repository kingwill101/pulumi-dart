// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceServiceAccount {
  /// The service account e-mail address.
  final pulumi.Input<String> email;
  /// A list of service scopes.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [GetInstanceServiceAccount].
  /// [email] The service account e-mail address.
  /// [scopes] A list of service scopes.
  const GetInstanceServiceAccount({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory GetInstanceServiceAccount.fromMap(Map<String, dynamic> map) {
    return GetInstanceServiceAccount(
      email: pulumi.Input.fromValue(map['email'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
