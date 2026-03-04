// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Activity query definitions
class ActivityEntityQueriesPropertiesQueryDefinitions {
  /// The Activity query to run on a given entity
  final pulumi.Input<String>? query;

  /// Creates a new [ActivityEntityQueriesPropertiesQueryDefinitions].
  /// [query] The Activity query to run on a given entity
  ActivityEntityQueriesPropertiesQueryDefinitions({this.query});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'query': ?query};
  }

  factory ActivityEntityQueriesPropertiesQueryDefinitions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ActivityEntityQueriesPropertiesQueryDefinitions(
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
