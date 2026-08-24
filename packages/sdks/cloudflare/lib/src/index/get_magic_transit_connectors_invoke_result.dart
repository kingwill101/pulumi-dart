// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_connectors_result.dart';

/// Result data returned by getMagicTransitConnectors.
class GetMagicTransitConnectorsInvokeResult {
  /// Account identifier
  final String? accountId;
  /// Filter connectors by device type.
  /// Available values: "MANAGED", "LICENSED".
  final String? deviceType;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetMagicTransitConnectorsResult>? results;

  /// Creates a new [GetMagicTransitConnectorsInvokeResult].
  /// [accountId] Account identifier
  /// [deviceType] Filter connectors by device type.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetMagicTransitConnectorsInvokeResult({
    this.accountId,
    this.deviceType,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'deviceType': ?deviceType,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicTransitConnectorsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMagicTransitConnectorsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitConnectorsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicTransitConnectorsResult>(guardedValue, (value) => GetMagicTransitConnectorsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
