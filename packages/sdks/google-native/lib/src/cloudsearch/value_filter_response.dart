// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'value_response.dart';

class ValueFilterResponse {
  /// The `operator_name` applied to the query, such as *price_greater_than*. The filter can work against both types of filters defined in the schema for your data source: 1. `operator_name`, where the query filters results by the property that matches the value. 2. `greater_than_operator_name` or `less_than_operator_name` in your schema. The query filters the results for the property values that are greater than or less than the supplied value in the query.
  final pulumi.Input<String> operatorName;
  /// The value to be compared with.
  final pulumi.Input<ValueResponse> value;

  /// Creates a new [ValueFilterResponse].
  /// [operatorName] The `operator_name` applied to the query, such as *price_greater_than*. The filter can work against both types of filters defined in the schema for your data source: 1. `operator_name`, where the query filters results by the property that matches the value. 2. `greater_than_operator_name` or `less_than_operator_name` in your schema. The query filters the results for the property values that are greater than or less than the supplied value in the query.
  /// [value] The value to be compared with.
  ValueFilterResponse({
    required this.operatorName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatorName': operatorName,
      'value': pulumi.Input.mapInputValue<ValueResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ValueFilterResponse.fromMap(Map<String, dynamic> map) {
    return ValueFilterResponse(
      operatorName: (map['operatorName'] as String).input(),
      value: (ValueResponse.fromMap((map['value'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

