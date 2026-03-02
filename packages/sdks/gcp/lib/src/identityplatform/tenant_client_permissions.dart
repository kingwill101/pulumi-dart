// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TenantClientPermissions {
  /// When true, end users cannot delete their account on the associated project through any of our API methods.
  final pulumi.Input<bool>? disabledUserDeletion;
  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods.
  final pulumi.Input<bool>? disabledUserSignup;

  /// Creates a new [TenantClientPermissions].
  /// [disabledUserDeletion] When true, end users cannot delete their account on the associated project through any of our API methods.
  /// [disabledUserSignup] When true, end users cannot sign up for a new account on the associated project through any of our API methods.
  TenantClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledUserDeletion': ?disabledUserDeletion,
      'disabledUserSignup': ?disabledUserSignup,
    };
  }

  factory TenantClientPermissions.fromMap(Map<String, dynamic> map) {
    return TenantClientPermissions(
      disabledUserDeletion: map['disabledUserDeletion'] == null ? null : (map['disabledUserDeletion']! as bool).input(),
      disabledUserSignup: map['disabledUserSignup'] == null ? null : (map['disabledUserSignup']! as bool).input(),
    );
  }
}

