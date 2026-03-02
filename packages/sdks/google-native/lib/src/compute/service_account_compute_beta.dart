// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccountComputeBeta {
  /// Email address of the service account.
  final pulumi.Input<String>? email;
  /// The list of scopes to be made available for this service account.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ServiceAccountComputeBeta].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  ServiceAccountComputeBeta({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': ?scopes,
    };
  }

  factory ServiceAccountComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServiceAccountComputeBeta(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

