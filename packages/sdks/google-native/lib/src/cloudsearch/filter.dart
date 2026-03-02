// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_filter.dart';
import 'value_filter.dart';

/// A generic way of expressing filters in a query, which supports two approaches: **1. Setting a ValueFilter.** The name must match an operator_name defined in the schema for your data source. **2. Setting a CompositeFilter.** The filters are evaluated using the logical operator. The top-level operators can only be either an AND or a NOT. AND can appear only at the top-most level. OR can appear only under a top-level AND.
class Filter {
  final pulumi.Input<CompositeFilter>? compositeFilter;
  final pulumi.Input<ValueFilter>? valueFilter;

  /// Creates a new [Filter].
  /// [compositeFilter] Optional.
  /// [valueFilter] Optional.
  Filter({
    this.compositeFilter,
    this.valueFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeFilter': ?pulumi.Input.mapOptionalInputValue<CompositeFilter, Map<String, dynamic>>(compositeFilter, (value) => value.toMap()),
      'valueFilter': ?pulumi.Input.mapOptionalInputValue<ValueFilter, Map<String, dynamic>>(valueFilter, (value) => value.toMap()),
    };
  }

  factory Filter.fromMap(Map<String, dynamic> map) {
    return Filter(
      compositeFilter: map['compositeFilter'] == null ? null : (CompositeFilter.fromMap((map['compositeFilter']! as Map).cast<String, dynamic>())).input(),
      valueFilter: map['valueFilter'] == null ? null : (ValueFilter.fromMap((map['valueFilter']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

