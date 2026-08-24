// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dns_location_get_zero_trust_dns_location_args_doc}
/// Arguments for getZeroTrustDnsLocation.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dns_location_get_zero_trust_dns_location_args_doc}
class GetZeroTrustDnsLocationArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> locationId;

  /// Creates a new [GetZeroTrustDnsLocationArgs].
  /// [accountId] Optional.
  /// [locationId] Required.
  const GetZeroTrustDnsLocationArgs({
    this.accountId,
    required this.locationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'locationId': locationId,
    };
  }

  factory GetZeroTrustDnsLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationId: pulumi.Input.fromValue(map['locationId'] as String),
    );
  }
}
