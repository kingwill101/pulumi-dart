// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyMfaConfig {
  /// The authenticators allowed for MFA.
  /// Available values: "totp", "biometrics", "security*key", "ssh*piv_key".
  final pulumi.Input<List<String>?>? allowedAuthenticators;
  /// Whether MFA is disabled for this policy.
  final pulumi.Input<bool?>? mfaDisabled;
  /// How often a user will be forced to re-authenticate with MFA.
  final pulumi.Input<String?>? sessionDuration;

  /// Creates a new [AccessApplicationPolicyMfaConfig].
  /// [allowedAuthenticators] The authenticators allowed for MFA.
  /// [mfaDisabled] Whether MFA is disabled for this policy.
  /// [sessionDuration] How often a user will be forced to re-authenticate with MFA.
  const AccessApplicationPolicyMfaConfig({
    this.allowedAuthenticators,
    this.mfaDisabled,
    this.sessionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAuthenticators': ?allowedAuthenticators,
      'mfaDisabled': ?mfaDisabled,
      'sessionDuration': ?sessionDuration,
    };
  }

  factory AccessApplicationPolicyMfaConfig.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyMfaConfig(
      allowedAuthenticators: (() { final guardedValue = map['allowedAuthenticators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mfaDisabled: (() { final guardedValue = map['mfaDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
