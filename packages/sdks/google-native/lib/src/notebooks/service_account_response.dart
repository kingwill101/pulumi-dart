// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account that acts as an identity.
class ServiceAccountResponse {
  /// Optional. Email address of the service account.
  final pulumi.Input<String> email;
  /// The list of scopes to be made available for this service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Optional. Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  ServiceAccountResponse({
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

