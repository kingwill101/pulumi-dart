// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyMfaConfig {
  /// Lists the MFA methods that users can authenticate with.
  final pulumi.Input<List<String>> allowedAuthenticators;
  /// Indicates whether to disable MFA for this resource. This option is available at the application and policy level.
  final pulumi.Input<bool> mfaDisabled;
  /// Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
  final pulumi.Input<String> sessionDuration;

  /// Creates a new [GetZeroTrustAccessPolicyMfaConfig].
  /// [allowedAuthenticators] Lists the MFA methods that users can authenticate with.
  /// [mfaDisabled] Indicates whether to disable MFA for this resource. This option is available at the application and policy level.
  /// [sessionDuration] Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
  const GetZeroTrustAccessPolicyMfaConfig({
    required this.allowedAuthenticators,
    required this.mfaDisabled,
    required this.sessionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAuthenticators': allowedAuthenticators,
      'mfaDisabled': mfaDisabled,
      'sessionDuration': sessionDuration,
    };
  }

  factory GetZeroTrustAccessPolicyMfaConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyMfaConfig(
      allowedAuthenticators: pulumi.Input.fromValue((map['allowedAuthenticators'] as List).cast<String>()),
      mfaDisabled: pulumi.Input.fromValue(map['mfaDisabled'] as bool),
      sessionDuration: pulumi.Input.fromValue(map['sessionDuration'] as String),
    );
  }
}
