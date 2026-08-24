// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyMfaConfig {
  /// Lists the MFA methods that users can authenticate with.
  final pulumi.Input<List<String>?>? allowedAuthenticators;
  /// Indicates whether to disable MFA for this resource. This option is available at the application and policy level.
  final pulumi.Input<bool?>? mfaDisabled;
  /// Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
  final pulumi.Input<String?>? sessionDuration;

  /// Creates a new [AccessPolicyMfaConfig].
  /// [allowedAuthenticators] Lists the MFA methods that users can authenticate with.
  /// [mfaDisabled] Indicates whether to disable MFA for this resource. This option is available at the application and policy level.
  /// [sessionDuration] Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
  const AccessPolicyMfaConfig({
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

  factory AccessPolicyMfaConfig.fromMap(Map<String, dynamic> map) {
    return AccessPolicyMfaConfig(
      allowedAuthenticators: (() { final guardedValue = map['allowedAuthenticators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mfaDisabled: (() { final guardedValue = map['mfaDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
