// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_inputs.dart';
import 'azure_machine_learning_web_service_output_column.dart';

/// The binding to an Azure Machine Learning web service.
class AzureMachineLearningWebServiceFunctionBinding {
  /// The API key used to authenticate with Request-Response endpoint.
  final String? apiKey;
  /// Number between 1 and 10000 describing maximum number of rows for every Azure ML RRS execute request. Default is 1000.
  final int? batchSize;
  /// The Request-Response execute endpoint of the Azure Machine Learning web service. Find out more here: https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-consume-web-services#request-response-service-rrs
  final String? endpoint;
  /// The inputs for the Azure Machine Learning web service endpoint.
  final AzureMachineLearningWebServiceInputs? inputs;
  /// A list of outputs from the Azure Machine Learning web service endpoint execution.
  final List<AzureMachineLearningWebServiceOutputColumn>? outputs;
  /// Indicates the function binding type.
  /// Expected value is 'Microsoft.MachineLearning/WebService'.
  final String type;

  /// Creates a new [AzureMachineLearningWebServiceFunctionBinding].
  /// [apiKey] The API key used to authenticate with Request-Response endpoint.
  /// [batchSize] Number between 1 and 10000 describing maximum number of rows for every Azure ML RRS execute request. Default is 1000.
  /// [endpoint] The Request-Response execute endpoint of the Azure Machine Learning web service. Find out more here: https://docs.microsoft.com/en-us/azure/machine-learning/machine-learning-consume-web-services#request-response-service-rrs
  /// [inputs] The inputs for the Azure Machine Learning web service endpoint.
  /// [outputs] A list of outputs from the Azure Machine Learning web service endpoint execution.
  /// [type] Indicates the function binding type.
  AzureMachineLearningWebServiceFunctionBinding({
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
      'inputs': ?inputs == null ? null : inputs!.toMap(),
      'outputs': ?outputs == null ? null : pulumi.Input.encodeList<AzureMachineLearningWebServiceOutputColumn, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AzureMachineLearningWebServiceFunctionBinding.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceFunctionBinding(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      inputs: map['inputs'] == null ? null : AzureMachineLearningWebServiceInputs.fromMap((map['inputs'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<AzureMachineLearningWebServiceOutputColumn>(map['outputs'], (value) => AzureMachineLearningWebServiceOutputColumn.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

