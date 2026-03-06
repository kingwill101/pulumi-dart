// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRecaptchaOptionsConfig {
  /// An optional field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<String>? redirectSiteKey;

  /// Creates a new [SecurityPolicyRecaptchaOptionsConfig].
  /// [redirectSiteKey] An optional field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  const SecurityPolicyRecaptchaOptionsConfig({
    this.redirectSiteKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectSiteKey': ?redirectSiteKey,
    };
  }

  factory SecurityPolicyRecaptchaOptionsConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRecaptchaOptionsConfig(
      redirectSiteKey: (() { final guardedValue = map['redirectSiteKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

