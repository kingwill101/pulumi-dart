// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_short_lived_certificate_get_zero_trust_access_short_lived_certificate_args_doc}
/// Arguments for getZeroTrustAccessShortLivedCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_short_lived_certificate_get_zero_trust_access_short_lived_certificate_args_doc}
class GetZeroTrustAccessShortLivedCertificateArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// UUID.
  final pulumi.Input<String> appId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessShortLivedCertificateArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [appId] UUID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessShortLivedCertificateArgs({
    this.accountId,
    required this.appId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': appId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessShortLivedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessShortLivedCertificateArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
