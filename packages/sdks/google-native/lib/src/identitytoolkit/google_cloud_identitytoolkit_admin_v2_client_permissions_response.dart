// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration related to restricting a user's ability to affect their account.
class GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse {
  /// When true, end users cannot delete their account on the associated project through any of our API methods
  final pulumi.Input<bool> disabledUserDeletion;
  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods
  final pulumi.Input<bool> disabledUserSignup;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse].
  /// [disabledUserDeletion] When true, end users cannot delete their account on the associated project through any of our API methods
  /// [disabledUserSignup] When true, end users cannot sign up for a new account on the associated project through any of our API methods
  const GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse({
    required this.disabledUserDeletion,
    required this.disabledUserSignup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledUserDeletion': disabledUserDeletion,
      'disabledUserSignup': disabledUserSignup,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2ClientPermissionsResponse(
      disabledUserDeletion: pulumi.Input.fromValue(map['disabledUserDeletion'] as bool),
      disabledUserSignup: pulumi.Input.fromValue(map['disabledUserSignup'] as bool),
    );
  }
}

