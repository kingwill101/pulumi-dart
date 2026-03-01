// ignore_for_file: unused_element, unnecessary_cast


/// Configuration related to restricting a user's ability to affect their account.
class GoogleCloudIdentitytoolkitAdminV2ClientPermissions {
  /// When true, end users cannot delete their account on the associated project through any of our API methods
  final bool? disabledUserDeletion;
  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods
  final bool? disabledUserSignup;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ClientPermissions].
  /// [disabledUserDeletion] When true, end users cannot delete their account on the associated project through any of our API methods
  /// [disabledUserSignup] When true, end users cannot sign up for a new account on the associated project through any of our API methods
  GoogleCloudIdentitytoolkitAdminV2ClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledUserDeletion': ?disabledUserDeletion,
      'disabledUserSignup': ?disabledUserSignup,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ClientPermissions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ClientPermissions(
      disabledUserDeletion: map['disabledUserDeletion'] == null ? null : map['disabledUserDeletion'] as bool,
      disabledUserSignup: map['disabledUserSignup'] == null ? null : map['disabledUserSignup'] as bool,
    );
  }
}

