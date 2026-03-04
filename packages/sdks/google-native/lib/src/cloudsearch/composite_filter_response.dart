// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

class CompositeFilterResponse {
  /// The logic operator of the sub filter.
  final pulumi.Input<String> logicOperator;

  /// Sub filters.
  final pulumi.Input<List<FilterResponse>> subFilters;

  /// Creates a new [CompositeFilterResponse].
  /// [logicOperator] The logic operator of the sub filter.
  /// [subFilters] Sub filters.
  CompositeFilterResponse({
    required this.logicOperator,
    required this.subFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicOperator': logicOperator,
      'subFilters':
          pulumi.Input.mapInputValue<
            List<FilterResponse>,
            List<Map<String, dynamic>>
          >(
            subFilters,
            (value) =>
                pulumi.Input.encodeList<FilterResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory CompositeFilterResponse.fromMap(Map<String, dynamic> map) {
    return CompositeFilterResponse(
      logicOperator: pulumi.Input.fromValue(map['logicOperator'] as String),
      subFilters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FilterResponse>(
          map['subFilters']!,
          (value) =>
              FilterResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
