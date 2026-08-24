// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustAccessShortLivedCertificate resources.
class ZeroTrustAccessShortLivedCertificateState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// UUID.
  final pulumi.Input<String?>? appId;
  /// The Application Audience (AUD) tag. Identifies the application associated with the CA.
  final pulumi.Input<String?>? aud;
  /// The public key to add to your SSH server configuration.
  final pulumi.Input<String?>? publicKey;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustAccessShortLivedCertificateState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [appId] UUID.
  /// [aud] The Application Audience (AUD) tag. Identifies the application associated with the CA.
  /// [publicKey] The public key to add to your SSH server configuration.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustAccessShortLivedCertificateState({
    this.accountId,
    this.appId,
    this.aud,
    this.publicKey,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'aud': ?aud,
      'publicKey': ?publicKey,
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustAccessShortLivedCertificateState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessShortLivedCertificateState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aud: (() { final guardedValue = map['aud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
