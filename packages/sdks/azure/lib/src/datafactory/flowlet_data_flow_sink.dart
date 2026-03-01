// ignore_for_file: unused_element, unnecessary_cast

import 'flowlet_data_flow_sink_dataset.dart';
import 'flowlet_data_flow_sink_flowlet.dart';
import 'flowlet_data_flow_sink_linked_service.dart';
import 'flowlet_data_flow_sink_rejected_linked_service.dart';
import 'flowlet_data_flow_sink_schema_linked_service.dart';

class FlowletDataFlowSink {
  /// A `dataset` block as defined below.
  final FlowletDataFlowSinkDataset? dataset;
  /// The description for the Data Flow Source.
  final String? description;
  /// A `flowlet` block as defined below.
  final FlowletDataFlowSinkFlowlet? flowlet;
  /// A `linked_service` block as defined below.
  final FlowletDataFlowSinkLinkedService? linkedService;
  /// The name for the Data Flow Source.
  final String name;
  /// A `rejected_linked_service` block as defined below.
  final FlowletDataFlowSinkRejectedLinkedService? rejectedLinkedService;
  /// A `schema_linked_service` block as defined below.
  final FlowletDataFlowSinkSchemaLinkedService? schemaLinkedService;

  /// Creates a new [FlowletDataFlowSink].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow Source.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow Source.
  /// [rejectedLinkedService] A `rejected_linked_service` block as defined below.
  /// [schemaLinkedService] A `schema_linked_service` block as defined below.
  FlowletDataFlowSink({
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

  factory FlowletDataFlowSink.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSink(
      dataset: map['dataset'] == null ? null : FlowletDataFlowSinkDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      flowlet: map['flowlet'] == null ? null : FlowletDataFlowSinkFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>()),
      linkedService: map['linkedService'] == null ? null : FlowletDataFlowSinkLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      rejectedLinkedService: map['rejectedLinkedService'] == null ? null : FlowletDataFlowSinkRejectedLinkedService.fromMap((map['rejectedLinkedService'] as Map).cast<String, dynamic>()),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : FlowletDataFlowSinkSchemaLinkedService.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

