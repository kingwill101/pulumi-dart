// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_enrichments_nrql_configuration.dart';

class WorkflowEnrichmentsNrql {
  /// Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  final pulumi.Input<String>? accountId;
  /// A set of key-value pairs to represent a enrichment configuration.
  final pulumi.Input<List<WorkflowEnrichmentsNrqlConfiguration>> configurations;
  /// Enrichment's id.
  final pulumi.Input<String>? enrichmentId;
  /// The name of the workflow.
  final pulumi.Input<String> name;
  /// The type of the enrichment. One of: (NRQL).
  final pulumi.Input<String>? type;

  /// Creates a new [WorkflowEnrichmentsNrql].
  /// [accountId] Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  /// [configurations] A set of key-value pairs to represent a enrichment configuration.
  /// [enrichmentId] Enrichment's id.
  /// [name] The name of the workflow.
  /// [type] The type of the enrichment. One of: (NRQL).
  WorkflowEnrichmentsNrql({
    this.accountId,
    required this.configurations,
    this.enrichmentId,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'configurations': pulumi.Input.mapInputValue<List<WorkflowEnrichmentsNrqlConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<WorkflowEnrichmentsNrqlConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enrichmentId': ?enrichmentId,
      'name': name,
      'type': ?type,
    };
  }

  factory WorkflowEnrichmentsNrql.fromMap(Map<String, dynamic> map) {
    return WorkflowEnrichmentsNrql(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurations: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowEnrichmentsNrqlConfiguration>(map['configurations']!, (value) => WorkflowEnrichmentsNrqlConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      enrichmentId: (() { final guardedValue = map['enrichmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

