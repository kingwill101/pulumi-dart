// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccountResponse {
  /// Email address of the service account.
  final pulumi.Input<String> email;
  /// The list of scopes to be made available for this service account.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  const ServiceAccountResponse({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: pulumi.Input.fromValue(map['email'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}

