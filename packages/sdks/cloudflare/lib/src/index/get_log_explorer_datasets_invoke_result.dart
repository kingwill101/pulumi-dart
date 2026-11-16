// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_explorer_datasets_result.dart';

/// Result data returned by getLogExplorerDatasets.
class GetLogExplorerDatasetsInvokeResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Set to true to include zone-scoped datasets belonging to this account. Only supported with account_id.
  final bool? includeZones;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetLogExplorerDatasetsResult>? results;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetLogExplorerDatasetsInvokeResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [includeZones] Set to true to include zone-scoped datasets belonging to this account. Only supported with account_id.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetLogExplorerDatasetsInvokeResult({
    this.accountId,
    this.includeZones,
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'includeZones': ?includeZones,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLogExplorerDatasetsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetLogExplorerDatasetsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetLogExplorerDatasetsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeZones: (() { final guardedValue = map['includeZones']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLogExplorerDatasetsResult>(guardedValue, (value) => GetLogExplorerDatasetsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
