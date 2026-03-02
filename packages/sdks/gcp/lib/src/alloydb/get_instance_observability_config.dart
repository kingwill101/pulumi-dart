// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceObservabilityConfig {
  /// Whether assistive experiences are enabled for this AlloyDB instance.
  final pulumi.Input<bool> assistiveExperiencesEnabled;
  /// Observability feature status for an instance.
  final pulumi.Input<bool> enabled;
  /// Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  final pulumi.Input<int> maxQueryStringLength;
  /// Preserve comments in the query string.
  final pulumi.Input<bool> preserveComments;
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  final pulumi.Input<int> queryPlansPerMinute;
  /// Record application tags for an instance. This flag is turned "on" by default.
  final pulumi.Input<bool> recordApplicationTags;
  /// Track actively running queries. If not set, default value is "off".
  final pulumi.Input<bool> trackActiveQueries;
  /// Record wait event types during query execution for an instance.
  final pulumi.Input<bool> trackWaitEventTypes;
  /// Record wait events during query execution for an instance.
  final pulumi.Input<bool> trackWaitEvents;

  /// Creates a new [GetInstanceObservabilityConfig].
  /// [assistiveExperiencesEnabled] Whether assistive experiences are enabled for this AlloyDB instance.
  /// [enabled] Observability feature status for an instance.
  /// [maxQueryStringLength] Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  /// [preserveComments] Preserve comments in the query string.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  /// [recordApplicationTags] Record application tags for an instance. This flag is turned "on" by default.
  /// [trackActiveQueries] Track actively running queries. If not set, default value is "off".
  /// [trackWaitEventTypes] Record wait event types during query execution for an instance.
  /// [trackWaitEvents] Record wait events during query execution for an instance.
  GetInstanceObservabilityConfig({
    required this.assistiveExperiencesEnabled,
    required this.enabled,
    required this.maxQueryStringLength,
    required this.preserveComments,
    required this.queryPlansPerMinute,
    required this.recordApplicationTags,
    required this.trackActiveQueries,
    required this.trackWaitEventTypes,
    required this.trackWaitEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assistiveExperiencesEnabled': assistiveExperiencesEnabled,
      'enabled': enabled,
      'maxQueryStringLength': maxQueryStringLength,
      'preserveComments': preserveComments,
      'queryPlansPerMinute': queryPlansPerMinute,
      'recordApplicationTags': recordApplicationTags,
      'trackActiveQueries': trackActiveQueries,
      'trackWaitEventTypes': trackWaitEventTypes,
      'trackWaitEvents': trackWaitEvents,
    };
  }

  factory GetInstanceObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceObservabilityConfig(
      assistiveExperiencesEnabled: (map['assistiveExperiencesEnabled'] as bool).input(),
      enabled: (map['enabled'] as bool).input(),
      maxQueryStringLength: (map['maxQueryStringLength'] as int).input(),
      preserveComments: (map['preserveComments'] as bool).input(),
      queryPlansPerMinute: (map['queryPlansPerMinute'] as int).input(),
      recordApplicationTags: (map['recordApplicationTags'] as bool).input(),
      trackActiveQueries: (map['trackActiveQueries'] as bool).input(),
      trackWaitEventTypes: (map['trackWaitEventTypes'] as bool).input(),
      trackWaitEvents: (map['trackWaitEvents'] as bool).input(),
    );
  }
}

