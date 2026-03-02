// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flowlet_data_flow_transformation_dataset.dart';
import 'flowlet_data_flow_transformation_flowlet.dart';
import 'flowlet_data_flow_transformation_linked_service.dart';

class FlowletDataFlowTransformation {
  /// A `dataset` block as defined below.
  final pulumi.Input<FlowletDataFlowTransformationDataset>? dataset;
  /// The description for the Data Flow transformation.
  final pulumi.Input<String>? description;
  /// A `flowlet` block as defined below.
  final pulumi.Input<FlowletDataFlowTransformationFlowlet>? flowlet;
  /// A `linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowTransformationLinkedService>? linkedService;
  /// The name for the Data Flow transformation.
  final pulumi.Input<String> name;

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
      'dataset': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowTransformationDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowTransformationFlowlet, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowTransformationLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
    };
  }

  factory FlowletDataFlowTransformation.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowTransformation(
      dataset: map['dataset'] == null ? null : (FlowletDataFlowTransformationDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flowlet: map['flowlet'] == null ? null : (FlowletDataFlowTransformationFlowlet.fromMap((map['flowlet']! as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (FlowletDataFlowTransformationLinkedService.fromMap((map['linkedService']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

