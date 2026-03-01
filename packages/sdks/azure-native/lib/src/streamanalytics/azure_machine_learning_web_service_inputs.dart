// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_input_column.dart';

/// The inputs for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceInputs {
  /// A list of input columns for the Azure Machine Learning web service endpoint.
  final List<AzureMachineLearningWebServiceInputColumn>? columnNames;
  /// The name of the input. This is the name provided while authoring the endpoint.
  final String? name;

  /// Creates a new [AzureMachineLearningWebServiceInputs].
  /// [columnNames] A list of input columns for the Azure Machine Learning web service endpoint.
  /// [name] The name of the input. This is the name provided while authoring the endpoint.
  AzureMachineLearningWebServiceInputs({
    this.columnNames,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': ?columnNames == null ? null : pulumi.Input.encodeList<AzureMachineLearningWebServiceInputColumn, Map<String, dynamic>>(columnNames!, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory AzureMachineLearningWebServiceInputs.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceInputs(
      columnNames: map['columnNames'] == null ? null : pulumi.Input.decodeList<AzureMachineLearningWebServiceInputColumn>(map['columnNames'], (value) => AzureMachineLearningWebServiceInputColumn.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

