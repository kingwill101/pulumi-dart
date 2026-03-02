// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataFlowSourceFlowlet {
  /// Specifies the reference data flow parameters from dataset.
  final pulumi.Input<String>? datasetParameters;
  /// The name for the Data Factory Flowlet.
  final pulumi.Input<String> name;
  /// A map of parameters to associate with the Data Factory Flowlet.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [DataFlowSourceFlowlet].
  /// [datasetParameters] Specifies the reference data flow parameters from dataset.
  /// [name] The name for the Data Factory Flowlet.
  /// [parameters] A map of parameters to associate with the Data Factory Flowlet.
  DataFlowSourceFlowlet({
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

  factory DataFlowSourceFlowlet.fromMap(Map<String, dynamic> map) {
    return DataFlowSourceFlowlet(
      datasetParameters: map['datasetParameters'] == null ? null : (map['datasetParameters'] as String).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
    );
  }
}

