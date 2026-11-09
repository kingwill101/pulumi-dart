// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_custom_profiles_result.dart';

/// Result data returned by getZeroTrustDeviceCustomProfiles.
class GetZeroTrustDeviceCustomProfilesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter profiles by client type. When omitted, only WARP profiles are returned.
  /// Available values: "warp", "browserExtension".
  final String? profileType;
  /// The items returned by the data source
  final List<GetZeroTrustDeviceCustomProfilesResult>? results;

  /// Creates a new [GetZeroTrustDeviceCustomProfilesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [profileType] Filter profiles by client type. When omitted, only WARP profiles are returned.
  /// [results] The items returned by the data source
  const GetZeroTrustDeviceCustomProfilesInvokeResult({
    this.accountId,
    this.maxItems,
    this.profileType,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'profileType': ?profileType,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceCustomProfilesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDeviceCustomProfilesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfilesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceCustomProfilesResult>(guardedValue, (value) => GetZeroTrustDeviceCustomProfilesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
