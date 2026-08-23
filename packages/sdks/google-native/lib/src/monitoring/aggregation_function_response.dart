// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_response.dart';

/// Preview: An identifier for an aggregation function. Aggregation functions are SQL functions that group or transform data from multiple points to a single point. This is a preview feature and may be subject to change before final release.
class AggregationFunctionResponse {
  /// Optional. Parameters applied to the aggregation function. Only used for functions that require them.
  final pulumi.Input<List<ParameterResponse>> parameters;
  /// The type of aggregation function, must be one of the following: "none" - no function. "percentile" - APPROX_QUANTILES() - 1 parameter numeric value "average" - AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT) "count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" - MIN() "sum" - SUM()
  final pulumi.Input<String> type;

  /// Creates a new [AggregationFunctionResponse].
  /// [parameters] Optional. Parameters applied to the aggregation function. Only used for functions that require them.
  /// [type] The type of aggregation function, must be one of the following: "none" - no function. "percentile" - APPROX_QUANTILES() - 1 parameter numeric value "average" - AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT) "count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" - MIN() "sum" - SUM()
  const AggregationFunctionResponse({
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': pulumi.Input.mapInputValue<List<ParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AggregationFunctionResponse.fromMap(Map<String, dynamic> map) {
    return AggregationFunctionResponse(
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<ParameterResponse>(map['parameters']!, (value) => ParameterResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
