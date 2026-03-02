// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'value.dart';

class ValueFilter {
  /// The `operator_name` applied to the query, such as *price_greater_than*. The filter can work against both types of filters defined in the schema for your data source: 1. `operator_name`, where the query filters results by the property that matches the value. 2. `greater_than_operator_name` or `less_than_operator_name` in your schema. The query filters the results for the property values that are greater than or less than the supplied value in the query.
  final pulumi.Input<String>? operatorName;
  /// The value to be compared with.
  final pulumi.Input<Value>? value;

  /// Creates a new [ValueFilter].
  /// [operatorName] The `operator_name` applied to the query, such as *price_greater_than*. The filter can work against both types of filters defined in the schema for your data source: 1. `operator_name`, where the query filters results by the property that matches the value. 2. `greater_than_operator_name` or `less_than_operator_name` in your schema. The query filters the results for the property values that are greater than or less than the supplied value in the query.
  /// [value] The value to be compared with.
  ValueFilter({
    this.operatorName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatorName': ?operatorName,
      'value': ?pulumi.Input.mapOptionalInputValue<Value, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ValueFilter.fromMap(Map<String, dynamic> map) {
    return ValueFilter(
      operatorName: map['operatorName'] == null ? null : (map['operatorName']! as String).input(),
      value: map['value'] == null ? null : (Value.fromMap((map['value']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

