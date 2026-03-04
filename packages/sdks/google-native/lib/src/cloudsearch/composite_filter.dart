// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_filter_logic_operator.dart';
import 'filter.dart';

class CompositeFilter {
  /// The logic operator of the sub filter.
  final pulumi.Input<CompositeFilterLogicOperator>? logicOperator;

  /// Sub filters.
  final pulumi.Input<List<Filter>>? subFilters;

  /// Creates a new [CompositeFilter].
  /// [logicOperator] The logic operator of the sub filter.
  /// [subFilters] Sub filters.
  CompositeFilter({this.logicOperator, this.subFilters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicOperator':
          ?pulumi.Input.mapOptionalInputValue<
            CompositeFilterLogicOperator,
            String
          >(logicOperator, (value) => value.wireValue),
      'subFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<Filter>,
            List<Map<String, dynamic>>
          >(
            subFilters,
            (value) => pulumi.Input.encodeList<Filter, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory CompositeFilter.fromMap(Map<String, dynamic> map) {
    return CompositeFilter(
      logicOperator: (() {
        final guardedValue = map['logicOperator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CompositeFilterLogicOperator.fromValue(guardedValue as String),
        );
      })(),
      subFilters: (() {
        final guardedValue = map['subFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Filter>(
            guardedValue,
            (value) => Filter.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
