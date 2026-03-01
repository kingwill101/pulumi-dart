// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_insight_item_response_query_time_interval.dart';
import 'insights_table_result_response.dart';

/// Entity insight Item.
class EntityInsightItemResponse {
  /// Query results for table insights query.
  final List<InsightsTableResultResponse>? chartQueryResults;
  /// The query id of the insight
  final String? queryId;
  /// The Time interval that the query actually executed on.
  final EntityInsightItemResponseQueryTimeInterval? queryTimeInterval;
  /// Query results for table insights query.
  final InsightsTableResultResponse? tableQueryResults;

  /// Creates a new [EntityInsightItemResponse].
  /// [chartQueryResults] Query results for table insights query.
  /// [queryId] The query id of the insight
  /// [queryTimeInterval] The Time interval that the query actually executed on.
  /// [tableQueryResults] Query results for table insights query.
  EntityInsightItemResponse({
    this.chartQueryResults,
    this.queryId,
    this.queryTimeInterval,
    this.tableQueryResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartQueryResults': ?chartQueryResults == null ? null : pulumi.Input.encodeList<InsightsTableResultResponse, Map<String, dynamic>>(chartQueryResults!, (value) => value.toMap()),
      'queryId': ?queryId,
      'queryTimeInterval': ?queryTimeInterval == null ? null : queryTimeInterval!.toMap(),
      'tableQueryResults': ?tableQueryResults == null ? null : tableQueryResults!.toMap(),
    };
  }

  factory EntityInsightItemResponse.fromMap(Map<String, dynamic> map) {
    return EntityInsightItemResponse(
      chartQueryResults: map['chartQueryResults'] == null ? null : pulumi.Input.decodeList<InsightsTableResultResponse>(map['chartQueryResults'], (value) => InsightsTableResultResponse.fromMap((value as Map).cast<String, dynamic>())),
      queryId: map['queryId'] == null ? null : map['queryId'] as String,
      queryTimeInterval: map['queryTimeInterval'] == null ? null : EntityInsightItemResponseQueryTimeInterval.fromMap((map['queryTimeInterval'] as Map).cast<String, dynamic>()),
      tableQueryResults: map['tableQueryResults'] == null ? null : InsightsTableResultResponse.fromMap((map['tableQueryResults'] as Map).cast<String, dynamic>()),
    );
  }
}

