// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccountComputeV1 {
  /// Email address of the service account.
  final pulumi.Input<String>? email;
  /// The list of scopes to be made available for this service account.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ServiceAccountComputeV1].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  const ServiceAccountComputeV1({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': ?scopes,
    };
  }

  factory ServiceAccountComputeV1.fromMap(Map<String, dynamic> map) {
    return ServiceAccountComputeV1(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

