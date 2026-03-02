// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service account.
class ServiceAccount {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final pulumi.Input<String>? email;
  /// The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  final pulumi.Input<List<String>>? scope;

  /// Creates a new [ServiceAccount].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scope] The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  ServiceAccount({
    this.email,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scope': ?scope,
    };
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      scope: map['scope'] == null ? null : ((map['scope'] as List).cast<String>()).input(),
    );
  }
}

