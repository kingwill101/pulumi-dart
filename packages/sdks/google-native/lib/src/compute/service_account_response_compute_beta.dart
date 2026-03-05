// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccountResponseComputeBeta {
  /// Email address of the service account.
  final pulumi.Input<String> email;
  /// The list of scopes to be made available for this service account.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [ServiceAccountResponseComputeBeta].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  ServiceAccountResponseComputeBeta({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory ServiceAccountResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponseComputeBeta(
      email: pulumi.Input.fromValue(map['email'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

