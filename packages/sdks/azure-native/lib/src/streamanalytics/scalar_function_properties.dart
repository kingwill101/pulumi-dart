// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_function_binding.dart';
import 'function_input.dart';
import 'function_output.dart';

/// The properties that are associated with a scalar function.
class ScalarFunctionProperties {
  /// The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  final pulumi.Input<AzureMachineLearningWebServiceFunctionBinding>? binding;
  final pulumi.Input<List<FunctionInput>>? inputs;
  /// Describes the output of a function.
  final pulumi.Input<FunctionOutput>? output;
  /// Indicates the type of function.
  /// Expected value is 'Scalar'.
  final pulumi.Input<String> type;

  /// Creates a new [ScalarFunctionProperties].
  /// [binding] The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  /// [inputs] Optional.
  /// [output] Describes the output of a function.
  /// [type] Indicates the type of function.
  ScalarFunctionProperties({
    this.binding,
    this.inputs,
    this.output,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binding': ?pulumi.Input.mapOptionalInputValue<AzureMachineLearningWebServiceFunctionBinding, Map<String, dynamic>>(binding, (value) => value.toMap()),
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<FunctionInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': ?pulumi.Input.mapOptionalInputValue<FunctionOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ScalarFunctionProperties.fromMap(Map<String, dynamic> map) {
    return ScalarFunctionProperties(
      binding: map['binding'] == null ? null : (AzureMachineLearningWebServiceFunctionBinding.fromMap((map['binding']! as Map).cast<String, dynamic>())).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeList<FunctionInput>(map['inputs']!, (value) => FunctionInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      output: map['output'] == null ? null : (FunctionOutput.fromMap((map['output']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

