// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_content_scanning_expressions_result.dart';

/// Result data returned by getContentScanningExpressions.
class GetContentScanningExpressionsInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetContentScanningExpressionsResult>? results;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetContentScanningExpressionsInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Defines an identifier.
  const GetContentScanningExpressionsInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContentScanningExpressionsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetContentScanningExpressionsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetContentScanningExpressionsInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContentScanningExpressionsResult>(guardedValue, (value) => GetContentScanningExpressionsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
