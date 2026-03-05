// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadStatusConfigAutomaticRuleNrqlQuery {
  /// The entity search query that is used to perform the search of a group of entities.
  final pulumi.Input<String> query;

  /// Creates a new [WorkloadStatusConfigAutomaticRuleNrqlQuery].
  /// [query] The entity search query that is used to perform the search of a group of entities.
  WorkloadStatusConfigAutomaticRuleNrqlQuery({
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
    };
  }

  factory WorkloadStatusConfigAutomaticRuleNrqlQuery.fromMap(Map<String, dynamic> map) {
    return WorkloadStatusConfigAutomaticRuleNrqlQuery(
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}

