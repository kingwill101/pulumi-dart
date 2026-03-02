// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_sink_dataset.dart';
import 'data_flow_sink_flowlet.dart';
import 'data_flow_sink_linked_service.dart';
import 'data_flow_sink_rejected_linked_service.dart';
import 'data_flow_sink_schema_linked_service.dart';

class DataFlowSink {
  /// A `dataset` block as defined below.
  final pulumi.Input<DataFlowSinkDataset>? dataset;
  /// The description for the Data Flow Source.
  final pulumi.Input<String>? description;
  /// A `flowlet` block as defined below.
  final pulumi.Input<DataFlowSinkFlowlet>? flowlet;
  /// A `linked_service` block as defined below.
  final pulumi.Input<DataFlowSinkLinkedService>? linkedService;
  /// The name for the Data Flow Source.
  final pulumi.Input<String> name;
  /// A `rejected_linked_service` block as defined below.
  final pulumi.Input<DataFlowSinkRejectedLinkedService>? rejectedLinkedService;
  /// A `schema_linked_service` block as defined below.
  final pulumi.Input<DataFlowSinkSchemaLinkedService>? schemaLinkedService;

  /// Creates a new [DataFlowSink].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow Source.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow Source.
  /// [rejectedLinkedService] A `rejected_linked_service` block as defined below.
  /// [schemaLinkedService] A `schema_linked_service` block as defined below.
  DataFlowSink({
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
      'dataset': ?pulumi.Input.mapOptionalInputValue<DataFlowSinkDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowSinkFlowlet, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowSinkLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
      'rejectedLinkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowSinkRejectedLinkedService, Map<String, dynamic>>(rejectedLinkedService, (value) => value.toMap()),
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowSinkSchemaLinkedService, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
    };
  }

  factory DataFlowSink.fromMap(Map<String, dynamic> map) {
    return DataFlowSink(
      dataset: map['dataset'] == null ? null : (DataFlowSinkDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowlet: map['flowlet'] == null ? null : (DataFlowSinkFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (DataFlowSinkLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      rejectedLinkedService: map['rejectedLinkedService'] == null ? null : (DataFlowSinkRejectedLinkedService.fromMap((map['rejectedLinkedService'] as Map).cast<String, dynamic>())).input(),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : (DataFlowSinkSchemaLinkedService.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

