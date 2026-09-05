// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessOrganizationMfaConfig {
  /// Lists the MFA methods that users can authenticate with. The `pivKey` and `sshFido2Key` values are supported only for infrastructure applications.
  final pulumi.Input<List<String>?>? allowedAuthenticators;
  /// Allows a user to skip MFA via Authentication Method Reference (AMR) matching when the AMR claim provided by the IdP the user used to authenticate contains "mfa". Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days).
  final pulumi.Input<String?>? amrMatchingSessionDuration;
  /// Specifies a Cloudflare List of required FIDO2 authenticator device AAGUIDs.
  final pulumi.Input<String?>? requiredAaguids;
  /// Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
  final pulumi.Input<String?>? sessionDuration;

  /// Creates a new [AccessOrganizationMfaConfig].
  /// [allowedAuthenticators] Lists the MFA methods that users can authenticate with. The `pivKey` and `sshFido2Key` values are supported only for infrastructure applications.
  /// [amrMatchingSessionDuration] Allows a user to skip MFA via Authentication Method Reference (AMR) matching when the AMR claim provided by the IdP the user used to authenticate contains "mfa". Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days).
  /// [requiredAaguids] Specifies a Cloudflare List of required FIDO2 authenticator device AAGUIDs.
  /// [sessionDuration] Defines the duration of an MFA session. Must be in minutes (m) or hours (h). Minimum: 0m. Maximum: 720h (30 days). Examples:`5m` or `24h`.
  const AccessOrganizationMfaConfig({
    this.allowedAuthenticators,
    this.amrMatchingSessionDuration,
    this.requiredAaguids,
    this.sessionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAuthenticators': ?allowedAuthenticators,
      'amrMatchingSessionDuration': ?amrMatchingSessionDuration,
      'requiredAaguids': ?requiredAaguids,
      'sessionDuration': ?sessionDuration,
    };
  }

  factory AccessOrganizationMfaConfig.fromMap(Map<String, dynamic> map) {
    return AccessOrganizationMfaConfig(
      allowedAuthenticators: (() { final guardedValue = map['allowedAuthenticators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      amrMatchingSessionDuration: (() { final guardedValue = map['amrMatchingSessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredAaguids: (() { final guardedValue = map['requiredAaguids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
