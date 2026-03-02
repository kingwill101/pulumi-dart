// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGceSetupServiceAccount {
  /// Optional. Email address of the service account.
  final pulumi.Input<String>? email;
  /// (Output)
  /// Output only. The list of scopes to be made available for this
  /// service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [InstanceGceSetupServiceAccount].
  /// [email] Optional. Email address of the service account.
  /// [scopes] (Output)
  InstanceGceSetupServiceAccount({
    this.email,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'scopes': ?scopes,
    };
  }

  factory InstanceGceSetupServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupServiceAccount(
      email: map['email'] == null ? null : (map['email']! as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes']! as List).cast<String>()).input(),
    );
  }
}

