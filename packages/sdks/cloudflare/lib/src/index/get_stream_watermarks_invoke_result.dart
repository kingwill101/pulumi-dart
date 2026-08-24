// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_watermarks_result.dart';

/// Result data returned by getStreamWatermarks.
class GetStreamWatermarksInvokeResult {
  /// The account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetStreamWatermarksResult>? results;

  /// Creates a new [GetStreamWatermarksInvokeResult].
  /// [accountId] The account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetStreamWatermarksInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStreamWatermarksResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetStreamWatermarksInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetStreamWatermarksInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStreamWatermarksResult>(guardedValue, (value) => GetStreamWatermarksResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
