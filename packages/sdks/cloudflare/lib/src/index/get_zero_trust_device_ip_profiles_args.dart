// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_ip_profiles_get_zero_trust_device_ip_profiles_args_doc}
/// Arguments for getZeroTrustDeviceIpProfiles.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_ip_profiles_get_zero_trust_device_ip_profiles_args_doc}
class GetZeroTrustDeviceIpProfilesArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The number of IP profiles to return per page.
  final pulumi.Input<int?>? perPage;

  /// Creates a new [GetZeroTrustDeviceIpProfilesArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [perPage] The number of IP profiles to return per page.
  const GetZeroTrustDeviceIpProfilesArgs({
    this.accountId,
    this.maxItems,
    this.perPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'perPage': ?perPage,
    };
  }

  factory GetZeroTrustDeviceIpProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceIpProfilesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
