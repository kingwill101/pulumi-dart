// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_filter.dart';

/// {@template pulumi_index_get_zero_trust_dns_location_get_zero_trust_dns_location_args_doc}
/// Arguments for getZeroTrustDnsLocation.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dns_location_get_zero_trust_dns_location_args_doc}
class GetZeroTrustDnsLocationArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustDnsLocationFilter?>? filter;
  final pulumi.Input<String?>? locationId;

  /// Creates a new [GetZeroTrustDnsLocationArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [locationId] Optional.
  const GetZeroTrustDnsLocationArgs({
    this.accountId,
    this.filter,
    this.locationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustDnsLocationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'locationId': ?locationId,
    };
  }

  factory GetZeroTrustDnsLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustDnsLocationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locationId: (() { final guardedValue = map['locationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
