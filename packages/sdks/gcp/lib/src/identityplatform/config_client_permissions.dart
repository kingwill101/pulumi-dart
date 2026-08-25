// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigClientPermissions {
  /// When true, end users cannot delete their account on the associated project through any of our API methods
  final pulumi.Input<bool?>? disabledUserDeletion;
  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods
  final pulumi.Input<bool?>? disabledUserSignup;

  /// Creates a new [ConfigClientPermissions].
  /// [disabledUserDeletion] When true, end users cannot delete their account on the associated project through any of our API methods
  /// [disabledUserSignup] When true, end users cannot sign up for a new account on the associated project through any of our API methods
  const ConfigClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledUserDeletion': ?disabledUserDeletion,
      'disabledUserSignup': ?disabledUserSignup,
    };
  }

  factory ConfigClientPermissions.fromMap(Map<String, dynamic> map) {
    return ConfigClientPermissions(
      disabledUserDeletion: (() { final guardedValue = map['disabledUserDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disabledUserSignup: (() { final guardedValue = map['disabledUserSignup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
