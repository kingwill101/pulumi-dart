// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccount {
  /// Email address of the service account.
  final pulumi.Input<String>? email;
  /// The list of scopes to be made available for this service account.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ServiceAccount].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  ServiceAccount({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': ?scopes,
    };
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : (map['email']! as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
    );
  }
}

