// ignore_for_file: unused_element, unnecessary_cast

import 'flowlet_data_flow_transformation_dataset.dart';
import 'flowlet_data_flow_transformation_flowlet.dart';
import 'flowlet_data_flow_transformation_linked_service.dart';

class FlowletDataFlowTransformation {
  /// A `dataset` block as defined below.
  final FlowletDataFlowTransformationDataset? dataset;
  /// The description for the Data Flow transformation.
  final String? description;
  /// A `flowlet` block as defined below.
  final FlowletDataFlowTransformationFlowlet? flowlet;
  /// A `linked_service` block as defined below.
  final FlowletDataFlowTransformationLinkedService? linkedService;
  /// The name for the Data Flow transformation.
  final String name;

  /// Creates a new [FlowletDataFlowTransformation].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow transformation.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow transformation.
  FlowletDataFlowTransformation({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset == null ? null : dataset!.toMap(),
      'description': ?description,
      'flowlet': ?flowlet == null ? null : flowlet!.toMap(),
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
      'name': name,
    };
  }

  factory FlowletDataFlowTransformation.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowTransformation(
      dataset: map['dataset'] == null ? null : FlowletDataFlowTransformationDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : FlowletDataFlowTransformationFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : FlowletDataFlowTransformationLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

