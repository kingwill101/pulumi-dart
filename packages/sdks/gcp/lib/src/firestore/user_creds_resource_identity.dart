// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserCredsResourceIdentity {
  /// (Output)
  /// The principal identifier string.
  /// See https://cloud.google.com/iam/docs/principal-identifiers.
  final pulumi.Input<String>? principal;

  /// Creates a new [UserCredsResourceIdentity].
  /// [principal] (Output)
  UserCredsResourceIdentity({
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?principal,
    };
  }

  factory UserCredsResourceIdentity.fromMap(Map<String, dynamic> map) {
    return UserCredsResourceIdentity(
      principal: map['principal'] == null ? null : (map['principal']! as String).input(),
    );
  }
}

