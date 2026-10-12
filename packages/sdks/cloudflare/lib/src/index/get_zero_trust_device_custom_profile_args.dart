// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_custom_profile_filter.dart';

/// {@template pulumi_index_get_zero_trust_device_custom_profile_get_zero_trust_device_custom_profile_args_doc}
/// Arguments for getZeroTrustDeviceCustomProfile.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_custom_profile_get_zero_trust_device_custom_profile_args_doc}
class GetZeroTrustDeviceCustomProfileArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustDeviceCustomProfileFilter?>? filter;
  final pulumi.Input<String?>? policyId;

  /// Creates a new [GetZeroTrustDeviceCustomProfileArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [policyId] Optional.
  const GetZeroTrustDeviceCustomProfileArgs({
    this.accountId,
    this.filter,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustDeviceCustomProfileFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'policyId': ?policyId,
    };
  }

  factory GetZeroTrustDeviceCustomProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustDeviceCustomProfileFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
