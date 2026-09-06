// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_input.dart';
import 'function_output.dart';

/// The properties that are associated with an aggregate function.
class AggregateFunctionProperties {
  /// The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  final pulumi.Input<dynamic>? binding;
  final pulumi.Input<List<FunctionInput>?>? inputs;
  /// Describes the output of a function.
  final pulumi.Input<FunctionOutput?>? output;
  /// Indicates the type of function.
  /// Expected value is 'Aggregate'.
  final pulumi.Input<String> type;

  /// Creates a new [AggregateFunctionProperties].
  /// [binding] The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  /// [inputs] Optional.
  /// [output] Describes the output of a function.
  /// [type] Indicates the type of function.
  const AggregateFunctionProperties({
    this.binding,
    this.inputs,
    this.output,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binding': ?binding,
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<FunctionInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': ?pulumi.Input.mapOptionalInputValue<FunctionOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AggregateFunctionProperties.fromMap(Map<String, dynamic> map) {
    return AggregateFunctionProperties(
      binding: (() { final guardedValue = map['binding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionInput>(guardedValue, (value) => FunctionInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
