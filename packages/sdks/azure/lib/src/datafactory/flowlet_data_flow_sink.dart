// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flowlet_data_flow_sink_dataset.dart';
import 'flowlet_data_flow_sink_flowlet.dart';
import 'flowlet_data_flow_sink_linked_service.dart';
import 'flowlet_data_flow_sink_rejected_linked_service.dart';
import 'flowlet_data_flow_sink_schema_linked_service.dart';

class FlowletDataFlowSink {
  /// A `dataset` block as defined below.
  final pulumi.Input<FlowletDataFlowSinkDataset>? dataset;
  /// The description for the Data Flow Source.
  final pulumi.Input<String>? description;
  /// A `flowlet` block as defined below.
  final pulumi.Input<FlowletDataFlowSinkFlowlet>? flowlet;
  /// A `linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowSinkLinkedService>? linkedService;
  /// The name for the Data Flow Source.
  final pulumi.Input<String> name;
  /// A `rejected_linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowSinkRejectedLinkedService>? rejectedLinkedService;
  /// A `schema_linked_service` block as defined below.
  final pulumi.Input<FlowletDataFlowSinkSchemaLinkedService>? schemaLinkedService;

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
      'dataset': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSinkDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSinkFlowlet, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSinkLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
      'rejectedLinkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSinkRejectedLinkedService, Map<String, dynamic>>(rejectedLinkedService, (value) => value.toMap()),
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<FlowletDataFlowSinkSchemaLinkedService, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
    };
  }

  factory FlowletDataFlowSink.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSink(
      dataset: map['dataset'] == null ? null : (FlowletDataFlowSinkDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowlet: map['flowlet'] == null ? null : (FlowletDataFlowSinkFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (FlowletDataFlowSinkLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      rejectedLinkedService: map['rejectedLinkedService'] == null ? null : (FlowletDataFlowSinkRejectedLinkedService.fromMap((map['rejectedLinkedService'] as Map).cast<String, dynamic>())).input(),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : (FlowletDataFlowSinkSchemaLinkedService.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

