// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRecaptchaOptionsConfig {
  /// A field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of `GOOGLE_RECAPTCHA` under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used.
  final pulumi.Input<String> redirectSiteKey;

  /// Creates a new [SecurityPolicyRecaptchaOptionsConfig].
  /// [redirectSiteKey] A field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of `GOOGLE_RECAPTCHA` under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used.
  const SecurityPolicyRecaptchaOptionsConfig({
    required this.redirectSiteKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectSiteKey': redirectSiteKey,
    };
  }

  factory SecurityPolicyRecaptchaOptionsConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRecaptchaOptionsConfig(
      redirectSiteKey: pulumi.Input.fromValue(map['redirectSiteKey'] as String),
    );
  }
}
