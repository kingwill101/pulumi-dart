// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowEnrichmentsNrqlConfiguration {
  /// enrichment's NRQL query
  final pulumi.Input<String> query;

  /// Creates a new [WorkflowEnrichmentsNrqlConfiguration].
  /// [query] enrichment's NRQL query
  WorkflowEnrichmentsNrqlConfiguration({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory WorkflowEnrichmentsNrqlConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkflowEnrichmentsNrqlConfiguration(
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}

