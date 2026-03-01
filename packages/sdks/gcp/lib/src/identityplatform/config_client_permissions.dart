// ignore_for_file: unused_element, unnecessary_cast


class ConfigClientPermissions {
  /// When true, end users cannot delete their account on the associated project through any of our API methods
  final bool? disabledUserDeletion;
  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods
  final bool? disabledUserSignup;

  /// Creates a new [ConfigClientPermissions].
  /// [disabledUserDeletion] When true, end users cannot delete their account on the associated project through any of our API methods
  /// [disabledUserSignup] When true, end users cannot sign up for a new account on the associated project through any of our API methods
  ConfigClientPermissions({
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
      disabledUserDeletion: map['disabledUserDeletion'] == null ? null : map['disabledUserDeletion'] as bool,
      disabledUserSignup: map['disabledUserSignup'] == null ? null : map['disabledUserSignup'] as bool,
    );
  }
}

