// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceObservabilityConfig {
  /// Whether assistive experiences are enabled for this AlloyDB instance.
  final pulumi.Input<bool>? assistiveExperiencesEnabled;
  /// Observability feature status for an instance.
  final pulumi.Input<bool>? enabled;
  /// Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  final pulumi.Input<int>? maxQueryStringLength;
  /// Preserve comments in the query string.
  final pulumi.Input<bool>? preserveComments;
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  final pulumi.Input<int>? queryPlansPerMinute;
  /// Record application tags for an instance. This flag is turned "on" by default.
  final pulumi.Input<bool>? recordApplicationTags;
  /// Track actively running queries. If not set, default value is "off".
  final pulumi.Input<bool>? trackActiveQueries;
  /// Record wait event types during query execution for an instance.
  final pulumi.Input<bool>? trackWaitEventTypes;
  /// Record wait events during query execution for an instance.
  final pulumi.Input<bool>? trackWaitEvents;

  /// Creates a new [InstanceObservabilityConfig].
  /// [assistiveExperiencesEnabled] Whether assistive experiences are enabled for this AlloyDB instance.
  /// [enabled] Observability feature status for an instance.
  /// [maxQueryStringLength] Query string length. The default value is 10240. Any integer between 1024 and 100000 is considered valid.
  /// [preserveComments] Preserve comments in the query string.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 200 is considered valid.
  /// [recordApplicationTags] Record application tags for an instance. This flag is turned "on" by default.
  /// [trackActiveQueries] Track actively running queries. If not set, default value is "off".
  /// [trackWaitEventTypes] Record wait event types during query execution for an instance.
  /// [trackWaitEvents] Record wait events during query execution for an instance.
  const InstanceObservabilityConfig({
    this.assistiveExperiencesEnabled,
    this.enabled,
    this.maxQueryStringLength,
    this.preserveComments,
    this.queryPlansPerMinute,
    this.recordApplicationTags,
    this.trackActiveQueries,
    this.trackWaitEventTypes,
    this.trackWaitEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assistiveExperiencesEnabled': ?assistiveExperiencesEnabled,
      'enabled': ?enabled,
      'maxQueryStringLength': ?maxQueryStringLength,
      'preserveComments': ?preserveComments,
      'queryPlansPerMinute': ?queryPlansPerMinute,
      'recordApplicationTags': ?recordApplicationTags,
      'trackActiveQueries': ?trackActiveQueries,
      'trackWaitEventTypes': ?trackWaitEventTypes,
      'trackWaitEvents': ?trackWaitEvents,
    };
  }

  factory InstanceObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return InstanceObservabilityConfig(
      assistiveExperiencesEnabled: (() { final guardedValue = map['assistiveExperiencesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxQueryStringLength: (() { final guardedValue = map['maxQueryStringLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preserveComments: (() { final guardedValue = map['preserveComments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryPlansPerMinute: (() { final guardedValue = map['queryPlansPerMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recordApplicationTags: (() { final guardedValue = map['recordApplicationTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trackActiveQueries: (() { final guardedValue = map['trackActiveQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trackWaitEventTypes: (() { final guardedValue = map['trackWaitEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trackWaitEvents: (() { final guardedValue = map['trackWaitEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

