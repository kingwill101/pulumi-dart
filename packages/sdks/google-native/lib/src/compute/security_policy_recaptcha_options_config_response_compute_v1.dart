// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRecaptchaOptionsConfigResponseComputeV1 {
  /// An optional field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<String> redirectSiteKey;

  /// Creates a new [SecurityPolicyRecaptchaOptionsConfigResponseComputeV1].
  /// [redirectSiteKey] An optional field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  const SecurityPolicyRecaptchaOptionsConfigResponseComputeV1({
    required this.redirectSiteKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectSiteKey': redirectSiteKey,
    };
  }

  factory SecurityPolicyRecaptchaOptionsConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRecaptchaOptionsConfigResponseComputeV1(
      redirectSiteKey: pulumi.Input.fromValue(map['redirectSiteKey'] as String),
    );
  }
}

