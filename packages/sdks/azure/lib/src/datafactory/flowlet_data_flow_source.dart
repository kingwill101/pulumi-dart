// ignore_for_file: unused_element, unnecessary_cast

import 'flowlet_data_flow_source_dataset.dart';
import 'flowlet_data_flow_source_flowlet.dart';
import 'flowlet_data_flow_source_linked_service.dart';
import 'flowlet_data_flow_source_rejected_linked_service.dart';
import 'flowlet_data_flow_source_schema_linked_service.dart';

class FlowletDataFlowSource {
  /// A `dataset` block as defined below.
  final FlowletDataFlowSourceDataset? dataset;
  /// The description for the Data Flow Source.
  final String? description;
  /// A `flowlet` block as defined below.
  final FlowletDataFlowSourceFlowlet? flowlet;
  /// A `linked_service` block as defined below.
  final FlowletDataFlowSourceLinkedService? linkedService;
  /// The name for the Data Flow Source.
  final String name;
  /// A `rejected_linked_service` block as defined below.
  final FlowletDataFlowSourceRejectedLinkedService? rejectedLinkedService;
  /// A `schema_linked_service` block as defined below.
  final FlowletDataFlowSourceSchemaLinkedService? schemaLinkedService;

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
      'dataset': ?dataset == null ? null : dataset!.toMap(),
      'description': ?description,
      'flowlet': ?flowlet == null ? null : flowlet!.toMap(),
      'linkedService': ?linkedService == null ? null : linkedService!.toMap(),
      'name': name,
      'rejectedLinkedService': ?rejectedLinkedService == null ? null : rejectedLinkedService!.toMap(),
      'schemaLinkedService': ?schemaLinkedService == null ? null : schemaLinkedService!.toMap(),
    };
  }

  factory FlowletDataFlowSource.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSource(
      dataset: map['dataset'] == null ? null : FlowletDataFlowSourceDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : FlowletDataFlowSourceFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : FlowletDataFlowSourceLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      rejectedLinkedService: map['rejectedLinkedService'] == null ? null : FlowletDataFlowSourceRejectedLinkedService.fromMap((map['rejectedLinkedService'] as Map).cast<String, dynamic>()),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : FlowletDataFlowSourceSchemaLinkedService.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

