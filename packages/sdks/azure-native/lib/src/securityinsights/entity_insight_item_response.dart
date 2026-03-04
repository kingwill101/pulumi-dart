// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_insight_item_response_query_time_interval.dart';
import 'insights_table_result_response.dart';

/// Entity insight Item.
class EntityInsightItemResponse {
  /// Query results for table insights query.
  final pulumi.Input<List<InsightsTableResultResponse>>? chartQueryResults;

  /// The query id of the insight
  final pulumi.Input<String>? queryId;

  /// The Time interval that the query actually executed on.
  final pulumi.Input<EntityInsightItemResponseQueryTimeInterval>?
  queryTimeInterval;

  /// Query results for table insights query.
  final pulumi.Input<InsightsTableResultResponse>? tableQueryResults;

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
      'chartQueryResults':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightsTableResultResponse>,
            List<Map<String, dynamic>>
          >(
            chartQueryResults,
            (value) =>
                pulumi.Input.encodeList<
                  InsightsTableResultResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queryId': ?queryId,
      'queryTimeInterval':
          ?pulumi.Input.mapOptionalInputValue<
            EntityInsightItemResponseQueryTimeInterval,
            Map<String, dynamic>
          >(queryTimeInterval, (value) => value.toMap()),
      'tableQueryResults':
          ?pulumi.Input.mapOptionalInputValue<
            InsightsTableResultResponse,
            Map<String, dynamic>
          >(tableQueryResults, (value) => value.toMap()),
    };
  }

  factory EntityInsightItemResponse.fromMap(Map<String, dynamic> map) {
    return EntityInsightItemResponse(
      chartQueryResults: (() {
        final guardedValue = map['chartQueryResults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightsTableResultResponse>(
            guardedValue,
            (value) => InsightsTableResultResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      queryId: (() {
        final guardedValue = map['queryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryTimeInterval: (() {
        final guardedValue = map['queryTimeInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EntityInsightItemResponseQueryTimeInterval.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tableQueryResults: (() {
        final guardedValue = map['tableQueryResults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InsightsTableResultResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
