// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_posture_integrations_result.dart';

/// Result data returned by getZeroTrustDevicePostureIntegrations.
class GetZeroTrustDevicePostureIntegrationsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDevicePostureIntegrationsResult>? results;

  /// Creates a new [GetZeroTrustDevicePostureIntegrationsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustDevicePostureIntegrationsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDevicePostureIntegrationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDevicePostureIntegrationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureIntegrationsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDevicePostureIntegrationsResult>(guardedValue, (value) => GetZeroTrustDevicePostureIntegrationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
