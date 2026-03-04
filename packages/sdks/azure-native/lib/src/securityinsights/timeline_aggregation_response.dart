// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// timeline aggregation information per kind
class TimelineAggregationResponse {
  /// the total items found for a kind
  final pulumi.Input<int> count;

  /// the query kind
  final pulumi.Input<String> kind;

  /// Creates a new [TimelineAggregationResponse].
  /// [count] the total items found for a kind
  /// [kind] the query kind
  TimelineAggregationResponse({required this.count, required this.kind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'kind': kind};
  }

  factory TimelineAggregationResponse.fromMap(Map<String, dynamic> map) {
    return TimelineAggregationResponse(
      count: pulumi.Input.fromValue(map['count'] as int),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
