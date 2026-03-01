// ignore_for_file: unused_element, unnecessary_cast


/// Describes an input column for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceInputColumn {
  /// The (Azure Machine Learning supported) data type of the input column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  final String? dataType;
  /// The zero based index of the function parameter this input maps to.
  final int? mapTo;
  /// The name of the input column.
  final String? name;

  /// Creates a new [AzureMachineLearningWebServiceInputColumn].
  /// [dataType] The (Azure Machine Learning supported) data type of the input column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  /// [mapTo] The zero based index of the function parameter this input maps to.
  /// [name] The name of the input column.
  AzureMachineLearningWebServiceInputColumn({
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

  factory AzureMachineLearningWebServiceInputColumn.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceInputColumn(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      mapTo: map['mapTo'] == null ? null : map['mapTo'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

