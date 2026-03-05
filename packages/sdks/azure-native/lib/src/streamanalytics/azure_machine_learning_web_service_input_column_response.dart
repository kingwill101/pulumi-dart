// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an input column for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceInputColumnResponse {
  /// The (Azure Machine Learning supported) data type of the input column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  final pulumi.Input<String>? dataType;
  /// The zero based index of the function parameter this input maps to.
  final pulumi.Input<int>? mapTo;
  /// The name of the input column.
  final pulumi.Input<String>? name;

  /// Creates a new [AzureMachineLearningWebServiceInputColumnResponse].
  /// [dataType] The (Azure Machine Learning supported) data type of the input column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  /// [mapTo] The zero based index of the function parameter this input maps to.
  /// [name] The name of the input column.
  AzureMachineLearningWebServiceInputColumnResponse({
    this.dataType,
    this.mapTo,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'mapTo': ?mapTo,
      'name': ?name,
    };
  }

  factory AzureMachineLearningWebServiceInputColumnResponse.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceInputColumnResponse(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapTo: (() { final guardedValue = map['mapTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

