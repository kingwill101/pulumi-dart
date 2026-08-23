// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_machine_learning_web_service_input_column.dart';

/// The inputs for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceInputs {
  /// A list of input columns for the Azure Machine Learning web service endpoint.
  final pulumi.Input<List<AzureMachineLearningWebServiceInputColumn>>? columnNames;
  /// The name of the input. This is the name provided while authoring the endpoint.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureMachineLearningWebServiceInputs].
  /// [columnNames] A list of input columns for the Azure Machine Learning web service endpoint.
  /// [name] The name of the input. This is the name provided while authoring the endpoint.
  const AzureMachineLearningWebServiceInputs({
    this.columnNames,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': ?pulumi.Input.mapOptionalInputValue<List<AzureMachineLearningWebServiceInputColumn>, List<Map<String, dynamic>>>(columnNames, (value) => pulumi.Input.encodeList<AzureMachineLearningWebServiceInputColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory AzureMachineLearningWebServiceInputs.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceInputs(
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureMachineLearningWebServiceInputColumn>(guardedValue, (value) => AzureMachineLearningWebServiceInputColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
