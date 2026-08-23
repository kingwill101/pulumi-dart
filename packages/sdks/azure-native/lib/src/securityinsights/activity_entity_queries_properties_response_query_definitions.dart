// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Activity query definitions
class ActivityEntityQueriesPropertiesResponseQueryDefinitions {
  /// The Activity query to run on a given entity
  final pulumi.Input<String>? query;

  /// Creates a new [ActivityEntityQueriesPropertiesResponseQueryDefinitions].
  /// [query] The Activity query to run on a given entity
  const ActivityEntityQueriesPropertiesResponseQueryDefinitions({
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': ?query,
    };
  }

  factory ActivityEntityQueriesPropertiesResponseQueryDefinitions.fromMap(Map<String, dynamic> map) {
    return ActivityEntityQueriesPropertiesResponseQueryDefinitions(
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
