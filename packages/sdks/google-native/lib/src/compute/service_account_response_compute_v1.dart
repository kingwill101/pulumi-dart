// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccountResponseComputeV1 {
  /// Email address of the service account.
  final pulumi.Input<String> email;
  /// The list of scopes to be made available for this service account.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [ServiceAccountResponseComputeV1].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  ServiceAccountResponseComputeV1({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory ServiceAccountResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponseComputeV1(
      email: pulumi.Input.fromValue(map['email'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

