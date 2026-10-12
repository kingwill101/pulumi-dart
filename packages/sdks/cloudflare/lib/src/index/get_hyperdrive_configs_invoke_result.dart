// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hyperdrive_configs_result.dart';

/// Result data returned by getHyperdriveConfigs.
class GetHyperdriveConfigsInvokeResult {
  /// Define configurations using a unique string identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetHyperdriveConfigsResult>? results;

  /// Creates a new [GetHyperdriveConfigsInvokeResult].
  /// [accountId] Define configurations using a unique string identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetHyperdriveConfigsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHyperdriveConfigsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetHyperdriveConfigsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetHyperdriveConfigsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHyperdriveConfigsResult>(guardedValue, (value) => GetHyperdriveConfigsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
