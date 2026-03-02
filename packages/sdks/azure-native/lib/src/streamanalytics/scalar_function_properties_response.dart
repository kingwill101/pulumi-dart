// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_function_binding_response.dart';
import 'function_input_response.dart';
import 'function_output_response.dart';

/// The properties that are associated with a scalar function.
class ScalarFunctionPropertiesResponse {
  /// The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  final pulumi.Input<AzureMachineLearningWebServiceFunctionBindingResponse>? binding;
  /// The current entity tag for the function. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  final pulumi.Input<String> etag;
  final pulumi.Input<List<FunctionInputResponse>>? inputs;
  /// Describes the output of a function.
  final pulumi.Input<FunctionOutputResponse>? output;
  /// Indicates the type of function.
  /// Expected value is 'Scalar'.
  final pulumi.Input<String> type;

  /// Creates a new [ScalarFunctionPropertiesResponse].
  /// [binding] The physical binding of the function. For example, in the Azure Machine Learning web service’s case, this describes the endpoint.
  /// [etag] The current entity tag for the function. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency.
  /// [inputs] Optional.
  /// [output] Describes the output of a function.
  /// [type] Indicates the type of function.
  ScalarFunctionPropertiesResponse({
    this.binding,
    required this.etag,
    this.inputs,
    this.output,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binding': ?pulumi.Input.mapOptionalInputValue<AzureMachineLearningWebServiceFunctionBindingResponse, Map<String, dynamic>>(binding, (value) => value.toMap()),
      'etag': etag,
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<FunctionInputResponse>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<FunctionInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'output': ?pulumi.Input.mapOptionalInputValue<FunctionOutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ScalarFunctionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ScalarFunctionPropertiesResponse(
      binding: map['binding'] == null ? null : (AzureMachineLearningWebServiceFunctionBindingResponse.fromMap((map['binding']! as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeList<FunctionInputResponse>(map['inputs']!, (value) => FunctionInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      output: map['output'] == null ? null : (FunctionOutputResponse.fromMap((map['output']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

