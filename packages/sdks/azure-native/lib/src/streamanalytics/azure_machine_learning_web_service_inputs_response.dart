// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_input_column_response.dart';

/// The inputs for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceInputsResponse {
  /// A list of input columns for the Azure Machine Learning web service endpoint.
  final pulumi.Input<List<AzureMachineLearningWebServiceInputColumnResponse>>? columnNames;
  /// The name of the input. This is the name provided while authoring the endpoint.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureMachineLearningWebServiceInputsResponse].
  /// [columnNames] A list of input columns for the Azure Machine Learning web service endpoint.
  /// [name] The name of the input. This is the name provided while authoring the endpoint.
  const AzureMachineLearningWebServiceInputsResponse({
    this.columnNames,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': ?pulumi.Input.mapOptionalInputValue<List<AzureMachineLearningWebServiceInputColumnResponse>, List<Map<String, dynamic>>>(columnNames, (value) => pulumi.Input.encodeList<AzureMachineLearningWebServiceInputColumnResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory AzureMachineLearningWebServiceInputsResponse.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceInputsResponse(
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureMachineLearningWebServiceInputColumnResponse>(guardedValue, (value) => AzureMachineLearningWebServiceInputColumnResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

