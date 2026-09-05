// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowletDataFlowTransformationFlowlet {
  /// Specifies the reference data flow parameters from dataset.
  final pulumi.Input<String?>? datasetParameters;
  /// The name for the Data Factory Flowlet.
  final pulumi.Input<String> name;
  /// A map of parameters to associate with the Data Factory Flowlet.
  final pulumi.Input<Map<String, String>?>? parameters;

  /// Creates a new [FlowletDataFlowTransformationFlowlet].
  /// [datasetParameters] Specifies the reference data flow parameters from dataset.
  /// [name] The name for the Data Factory Flowlet.
  /// [parameters] A map of parameters to associate with the Data Factory Flowlet.
  const FlowletDataFlowTransformationFlowlet({
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

  factory FlowletDataFlowTransformationFlowlet.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowTransformationFlowlet(
      datasetParameters: (() { final guardedValue = map['datasetParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
