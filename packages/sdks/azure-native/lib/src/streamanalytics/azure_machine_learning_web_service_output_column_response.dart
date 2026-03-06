// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an output column for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceOutputColumnResponse {
  /// The (Azure Machine Learning supported) data type of the output column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  final pulumi.Input<String>? dataType;
  /// The name of the output column.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureMachineLearningWebServiceOutputColumnResponse].
  /// [dataType] The (Azure Machine Learning supported) data type of the output column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  /// [name] The name of the output column.
  const AzureMachineLearningWebServiceOutputColumnResponse({
    this.dataType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'name': ?name,
    };
  }

  factory AzureMachineLearningWebServiceOutputColumnResponse.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceOutputColumnResponse(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

