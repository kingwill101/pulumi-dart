// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_function_binding.dart';
import 'function_input.dart';
import 'function_output.dart';

/// The properties that are associated with an aggregate function.
class AggregateFunctionProperties {
  /// The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  final AzureMachineLearningWebServiceFunctionBinding? binding;
  final List<FunctionInput>? inputs;
  /// Describes the output of a function.
  final FunctionOutput? output;
  /// Indicates the type of function.
  /// Expected value is 'Aggregate'.
  final String type;

  /// Creates a new [AggregateFunctionProperties].
  /// [binding] The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  /// [inputs] Optional.
  /// [output] Describes the output of a function.
  /// [type] Indicates the type of function.
  AggregateFunctionProperties({
    this.binding,
    this.inputs,
    this.output,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binding': ?binding == null ? null : binding!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeList<FunctionInput, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'output': ?output == null ? null : output!.toMap(),
      'type': type,
    };
  }

  factory AggregateFunctionProperties.fromMap(Map<String, dynamic> map) {
    return AggregateFunctionProperties(
      binding: map['binding'] == null ? null : AzureMachineLearningWebServiceFunctionBinding.fromMap((map['binding'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeList<FunctionInput>(map['inputs'], (value) => FunctionInput.fromMap((value as Map).cast<String, dynamic>())),
      output: map['output'] == null ? null : FunctionOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

