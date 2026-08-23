// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_inputs.dart';
import 'azure_machine_learning_web_service_output_column.dart';

/// The binding to an Azure Machine Learning web service.
class AzureMachineLearningWebServiceFunctionBinding {
  /// The API key used to authenticate with Request-Response endpoint.
  final pulumi.Input<String>? apiKey;
  /// Number between 1 and 10000 describing maximum number of rows for every Azure ML RRS execute request. Default is 1000.
  final pulumi.Input<int>? batchSize;
  /// The Request-Response execute endpoint of the Azure Machine Learning web service. Find out more here: https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-consume-web-services#request-response-service-rrs
  final pulumi.Input<String>? endpoint;
  /// The inputs for the Azure Machine Learning web service endpoint.
  final pulumi.Input<AzureMachineLearningWebServiceInputs>? inputs;
  /// A list of outputs from the Azure Machine Learning web service endpoint execution.
  final pulumi.Input<List<AzureMachineLearningWebServiceOutputColumn>>? outputs;
  /// Indicates the function binding type.
  /// Expected value is 'Microsoft.MachineLearning/WebService'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureMachineLearningWebServiceFunctionBinding].
  /// [apiKey] The API key used to authenticate with Request-Response endpoint.
  /// [batchSize] Number between 1 and 10000 describing maximum number of rows for every Azure ML RRS execute request. Default is 1000.
  /// [endpoint] The Request-Response execute endpoint of the Azure Machine Learning web service. Find out more here: https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-consume-web-services#request-response-service-rrs
  /// [inputs] The inputs for the Azure Machine Learning web service endpoint.
  /// [outputs] A list of outputs from the Azure Machine Learning web service endpoint execution.
  /// [type] Indicates the function binding type.
  const AzureMachineLearningWebServiceFunctionBinding({
    this.apiKey,
    this.batchSize,
    this.endpoint,
    this.inputs,
    this.outputs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'batchSize': ?batchSize,
      'endpoint': ?endpoint,
      'inputs': ?pulumi.Input.mapOptionalInputValue<AzureMachineLearningWebServiceInputs, Map<String, dynamic>>(inputs, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<AzureMachineLearningWebServiceOutputColumn>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<AzureMachineLearningWebServiceOutputColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AzureMachineLearningWebServiceFunctionBinding.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceFunctionBinding(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMachineLearningWebServiceInputs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureMachineLearningWebServiceOutputColumn>(guardedValue, (value) => AzureMachineLearningWebServiceOutputColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
