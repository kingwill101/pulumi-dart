// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_unused_reason_response.dart';

class SearchStatisticsResponse {
  /// When index_usage_mode is UNUSED or PARTIALLY_USED, this field explains why index was not used in all or part of the search query. If index_usage_mode is FULLLY_USED, this field is not populated.
  final pulumi.Input<List<IndexUnusedReasonResponse>> indexUnusedReasons;
  /// Specifies index usage mode for the query.
  final pulumi.Input<String> indexUsageMode;

  /// Creates a new [SearchStatisticsResponse].
  /// [indexUnusedReasons] When index_usage_mode is UNUSED or PARTIALLY_USED, this field explains why index was not used in all or part of the search query. If index_usage_mode is FULLLY_USED, this field is not populated.
  /// [indexUsageMode] Specifies index usage mode for the query.
  const SearchStatisticsResponse({
    required this.indexUnusedReasons,
    required this.indexUsageMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexUnusedReasons': pulumi.Input.mapInputValue<List<IndexUnusedReasonResponse>, List<Map<String, dynamic>>>(indexUnusedReasons, (value) => pulumi.Input.encodeList<IndexUnusedReasonResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexUsageMode': indexUsageMode,
    };
  }

  factory SearchStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return SearchStatisticsResponse(
      indexUnusedReasons: pulumi.Input.fromValue(pulumi.Input.decodeList<IndexUnusedReasonResponse>(map['indexUnusedReasons']!, (value) => IndexUnusedReasonResponse.fromMap((value as Map).cast<String, dynamic>()))),
      indexUsageMode: pulumi.Input.fromValue(map['indexUsageMode'] as String),
    );
  }
}

