// ignore_for_file: unused_element, unnecessary_cast


class DataFlowTransformationFlowlet {
  /// Specifies the reference data flow parameters from dataset.
  final String? datasetParameters;
  /// The name for the Data Factory Flowlet.
  final String name;
  /// A map of parameters to associate with the Data Factory Flowlet.
  final Map<String, String>? parameters;

  /// Creates a new [DataFlowTransformationFlowlet].
  /// [datasetParameters] Specifies the reference data flow parameters from dataset.
  /// [name] The name for the Data Factory Flowlet.
  /// [parameters] A map of parameters to associate with the Data Factory Flowlet.
  DataFlowTransformationFlowlet({
    this.datasetParameters,
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetParameters': ?datasetParameters,
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory DataFlowTransformationFlowlet.fromMap(Map<String, dynamic> map) {
    return DataFlowTransformationFlowlet(
      datasetParameters: map['datasetParameters'] == null ? null : map['datasetParameters'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

