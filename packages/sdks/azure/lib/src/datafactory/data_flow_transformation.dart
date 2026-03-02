// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_transformation_dataset.dart';
import 'data_flow_transformation_flowlet.dart';
import 'data_flow_transformation_linked_service.dart';

class DataFlowTransformation {
  /// A `dataset` block as defined below.
  final pulumi.Input<DataFlowTransformationDataset>? dataset;
  /// The description for the Data Flow transformation.
  final pulumi.Input<String>? description;
  /// A `flowlet` block as defined below.
  final pulumi.Input<DataFlowTransformationFlowlet>? flowlet;
  /// A `linked_service` block as defined below.
  final pulumi.Input<DataFlowTransformationLinkedService>? linkedService;
  /// The name for the Data Flow transformation.
  final pulumi.Input<String> name;

  /// Creates a new [DataFlowTransformation].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow transformation.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow transformation.
  DataFlowTransformation({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?pulumi.Input.mapOptionalInputValue<DataFlowTransformationDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowTransformationFlowlet, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowTransformationLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
    };
  }

  factory DataFlowTransformation.fromMap(Map<String, dynamic> map) {
    return DataFlowTransformation(
      dataset: map['dataset'] == null ? null : (DataFlowTransformationDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flowlet: map['flowlet'] == null ? null : (DataFlowTransformationFlowlet.fromMap((map['flowlet']! as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (DataFlowTransformationLinkedService.fromMap((map['linkedService']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

