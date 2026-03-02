// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_source_dataset.dart';
import 'data_flow_source_flowlet.dart';
import 'data_flow_source_linked_service.dart';
import 'data_flow_source_rejected_linked_service.dart';
import 'data_flow_source_schema_linked_service.dart';

class DataFlowSource {
  /// A `dataset` block as defined below.
  final pulumi.Input<DataFlowSourceDataset>? dataset;
  /// The description for the Data Flow Source.
  final pulumi.Input<String>? description;
  /// A `flowlet` block as defined below.
  final pulumi.Input<DataFlowSourceFlowlet>? flowlet;
  /// A `linked_service` block as defined below.
  final pulumi.Input<DataFlowSourceLinkedService>? linkedService;
  /// The name for the Data Flow Source.
  final pulumi.Input<String> name;
  /// A `rejected_linked_service` block as defined below.
  final pulumi.Input<DataFlowSourceRejectedLinkedService>? rejectedLinkedService;
  /// A `schema_linked_service` block as defined below.
  final pulumi.Input<DataFlowSourceSchemaLinkedService>? schemaLinkedService;

  /// Creates a new [DataFlowSource].
  /// [dataset] A `dataset` block as defined below.
  /// [description] The description for the Data Flow Source.
  /// [flowlet] A `flowlet` block as defined below.
  /// [linkedService] A `linked_service` block as defined below.
  /// [name] The name for the Data Flow Source.
  /// [rejectedLinkedService] A `rejected_linked_service` block as defined below.
  /// [schemaLinkedService] A `schema_linked_service` block as defined below.
  DataFlowSource({
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
      'dataset': ?pulumi.Input.mapOptionalInputValue<DataFlowSourceDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'description': ?description,
      'flowlet': ?pulumi.Input.mapOptionalInputValue<DataFlowSourceFlowlet, Map<String, dynamic>>(flowlet, (value) => value.toMap()),
      'linkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowSourceLinkedService, Map<String, dynamic>>(linkedService, (value) => value.toMap()),
      'name': name,
      'rejectedLinkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowSourceRejectedLinkedService, Map<String, dynamic>>(rejectedLinkedService, (value) => value.toMap()),
      'schemaLinkedService': ?pulumi.Input.mapOptionalInputValue<DataFlowSourceSchemaLinkedService, Map<String, dynamic>>(schemaLinkedService, (value) => value.toMap()),
    };
  }

  factory DataFlowSource.fromMap(Map<String, dynamic> map) {
    return DataFlowSource(
      dataset: map['dataset'] == null ? null : (DataFlowSourceDataset.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowlet: map['flowlet'] == null ? null : (DataFlowSourceFlowlet.fromMap((map['flowlet'] as Map).cast<String, dynamic>())).input(),
      linkedService: map['linkedService'] == null ? null : (DataFlowSourceLinkedService.fromMap((map['linkedService'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      rejectedLinkedService: map['rejectedLinkedService'] == null ? null : (DataFlowSourceRejectedLinkedService.fromMap((map['rejectedLinkedService'] as Map).cast<String, dynamic>())).input(),
      schemaLinkedService: map['schemaLinkedService'] == null ? null : (DataFlowSourceSchemaLinkedService.fromMap((map['schemaLinkedService'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

