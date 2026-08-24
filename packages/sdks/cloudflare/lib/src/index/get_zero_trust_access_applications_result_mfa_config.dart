// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultMfaConfig {
  /// The authenticators allowed for MFA.
  /// Available values: "totp", "biometrics", "securityKey".
  final pulumi.Input<List<String>> allowedAuthenticators;
  /// Whether MFA is disabled for this application.
  final pulumi.Input<bool> mfaDisabled;
  /// How often a user will be forced to re-authenticate with MFA.
  final pulumi.Input<String> sessionDuration;

  /// Creates a new [GetZeroTrustAccessApplicationsResultMfaConfig].
  /// [allowedAuthenticators] The authenticators allowed for MFA.
  /// [mfaDisabled] Whether MFA is disabled for this application.
  /// [sessionDuration] How often a user will be forced to re-authenticate with MFA.
  const GetZeroTrustAccessApplicationsResultMfaConfig({
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

  factory GetZeroTrustAccessApplicationsResultMfaConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultMfaConfig(
      allowedAuthenticators: pulumi.Input.fromValue((map['allowedAuthenticators'] as List).cast<String>()),
      mfaDisabled: pulumi.Input.fromValue(map['mfaDisabled'] as bool),
      sessionDuration: pulumi.Input.fromValue(map['sessionDuration'] as String),
    );
  }
}
