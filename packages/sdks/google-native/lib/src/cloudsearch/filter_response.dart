// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_filter_response.dart';
import 'value_filter_response.dart';

/// A generic way of expressing filters in a query, which supports two approaches: **1. Setting a ValueFilter.** The name must match an operator_name defined in the schema for your data source. **2. Setting a CompositeFilter.** The filters are evaluated using the logical operator. The top-level operators can only be either an AND or a NOT. AND can appear only at the top-most level. OR can appear only under a top-level AND.
class FilterResponse {
  final pulumi.Input<CompositeFilterResponse> compositeFilter;
  final pulumi.Input<ValueFilterResponse> valueFilter;

  /// Creates a new [FilterResponse].
  /// [compositeFilter] Required.
  /// [valueFilter] Required.
  FilterResponse({required this.compositeFilter, required this.valueFilter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeFilter':
          pulumi.Input.mapInputValue<
            CompositeFilterResponse,
            Map<String, dynamic>
          >(compositeFilter, (value) => value.toMap()),
      'valueFilter':
          pulumi.Input.mapInputValue<ValueFilterResponse, Map<String, dynamic>>(
            valueFilter,
            (value) => value.toMap(),
          ),
    };
  }

  factory FilterResponse.fromMap(Map<String, dynamic> map) {
    return FilterResponse(
      compositeFilter: pulumi.Input.fromValue(
        CompositeFilterResponse.fromMap(
          (map['compositeFilter']! as Map).cast<String, dynamic>(),
        ),
      ),
      valueFilter: pulumi.Input.fromValue(
        ValueFilterResponse.fromMap(
          (map['valueFilter']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
