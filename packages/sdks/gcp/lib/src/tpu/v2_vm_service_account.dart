// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2VmServiceAccount {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final pulumi.Input<String?>? email;
  /// The list of scopes to be made available for this service account. If empty, access to all
  /// Cloud APIs will be allowed.
  final pulumi.Input<List<String>?>? scopes;

  /// Creates a new [V2VmServiceAccount].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scopes] The list of scopes to be made available for this service account. If empty, access to all
  const V2VmServiceAccount({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': ?scopes,
    };
  }

  factory V2VmServiceAccount.fromMap(Map<String, dynamic> map) {
    return V2VmServiceAccount(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
