// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reCAPTCHA key config. reCAPTCHA Enterprise offers different keys for different client platforms.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse {
  /// The reCAPTCHA Enterprise key resource name, e.g. "projects/{project}/keys/{key}"
  final pulumi.Input<String> key;
  /// The client's platform type.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse].
  /// [key] The reCAPTCHA Enterprise key resource name, e.g. "projects/{project}/keys/{key}"
  /// [type] The client's platform type.
  const GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse({
    required this.key,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

