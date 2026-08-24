// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_ip_profile_filter.dart';

/// {@template pulumi_index_get_zero_trust_device_ip_profile_get_zero_trust_device_ip_profile_args_doc}
/// Arguments for getZeroTrustDeviceIpProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_ip_profile_get_zero_trust_device_ip_profile_args_doc}
class GetZeroTrustDeviceIpProfileArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustDeviceIpProfileFilter?>? filter;
  final pulumi.Input<String?>? profileId;

  /// Creates a new [GetZeroTrustDeviceIpProfileArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [profileId] Optional.
  const GetZeroTrustDeviceIpProfileArgs({
    this.accountId,
    this.filter,
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustDeviceIpProfileFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'profileId': ?profileId,
    };
  }

  factory GetZeroTrustDeviceIpProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceIpProfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustDeviceIpProfileFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
