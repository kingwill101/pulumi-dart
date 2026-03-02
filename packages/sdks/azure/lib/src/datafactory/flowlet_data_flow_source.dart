// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flowlet_data_flow_source_dataset.dart';
import 'flowlet_data_flow_source_flowlet.dart';
import 'flowlet_data_flow_source_linked_service.dart';
import 'flowlet_data_flow_source_rejected_linked_service.dart';
import 'flowlet_data_flow_source_schema_linked_service.dart';

class FlowletDataFlowSource {
  /// A `dataset` block as defined below.
  final pulumi.Input<FlowletDataFlowSourceDataset>? dataset;
  /// The description for the Data Flow Source.
  final pulumi.Input<String>? description;
  /// A `flowlet` block as defined below.
  final pulumi.Input<FlowletDataFlowSourceFlowlet>? flowlet;
  /// A `linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowSourceLinkedService>? linkedService;
  /// The name for the Data Flow Source.
  final pulumi.Input<String> name;
  /// A `rejected_linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowSourceRejectedLinkedService>? rejectedLinkedService;
  /// A `schema_linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowSourceSchemaLinkedService>? schemaLinkedService;

  /// Creates a new [FlowletDataFlowSource].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow Source.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow Source.
  /// [rejectedLinkedService] A `rejected_linked_service` block as defined below.
  /// [schemaLinkedService] A `schema_linked_service` block as defined below.
  FlowletDataFlowSource({
    this.dataset,
    this.description,
    this.flowlet,
    this.linkedService,
    required this.name,
    this.rejectedLinkedService,
    this.schemaLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSourceDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSourceFlowlet, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSourceLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
      'rejectedLinkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSourceRejectedLinkedService, Map<String, dynamic>>(rejectedLinkedService, (value) => value.toMap()),
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSourceSchemaLinkedService, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
    };
  }

  factory FlowletDataFlowSource.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSource(
      dataset: map['dataset'] == null ? null : (FlowletDataFlowSourceDataset.fromMap((map['dataset']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flowlet: map['flowlet'] == null ? null : (FlowletDataFlowSourceFlowlet.fromMap((map['flowlet']! as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (FlowletDataFlowSourceLinkedService.fromMap((map['linkedService']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      rejectedLinkedService: map['rejectedLinkedService'] == null ? null : (FlowletDataFlowSourceRejectedLinkedService.fromMap((map['rejectedLinkedService']! as Map).cast<String, dynamic>())).input(),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : (FlowletDataFlowSourceSchemaLinkedService.fromMap((map['schemaLinkedService']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

