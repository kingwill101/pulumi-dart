// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_ip_profiles_result.dart';

/// Result data returned by getZeroTrustDeviceIpProfiles.
class GetZeroTrustDeviceIpProfilesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The number of IP profiles to return per page.
  final int? perPage;
  /// The items returned by the data source
  final List<GetZeroTrustDeviceIpProfilesResult>? results;

  /// Creates a new [GetZeroTrustDeviceIpProfilesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [perPage] The number of IP profiles to return per page.
  /// [results] The items returned by the data source
  const GetZeroTrustDeviceIpProfilesInvokeResult({
    this.accountId,
    this.maxItems,
    this.perPage,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'perPage': ?perPage,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDeviceIpProfilesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDeviceIpProfilesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceIpProfilesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDeviceIpProfilesResult>(guardedValue, (value) => GetZeroTrustDeviceIpProfilesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
