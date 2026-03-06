// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_exclude_objects.dart';
import 'stream_source_config_spanner_source_config_include_objects.dart';

class StreamSourceConfigSpannerSourceConfig {
  /// Whether to use DataBoost for backfill queries.
  final pulumi.Input<bool>? backfillDataBoostEnabled;
  /// The Spanner change stream name to use.
  final pulumi.Input<String>? changeStreamName;
  /// Spanner objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSpannerSourceConfigExcludeObjects>? excludeObjects;
  /// The FGAC role to use for Spanner queries.
  final pulumi.Input<String>? fgacRole;
  /// Spanner objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSpannerSourceConfigIncludeObjects>? includeObjects;
  /// Max concurrent backfill tasks.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// Max concurrent CDC tasks.
  final pulumi.Input<int>? maxConcurrentCdcTasks;
  /// The RPC priority to use for Spanner queries.
  /// Possible values are: `LOW`, `MEDIUM`, `HIGH`.
  final pulumi.Input<String>? spannerRpcPriority;

  /// Creates a new [StreamSourceConfigSpannerSourceConfig].
  /// [backfillDataBoostEnabled] Whether to use DataBoost for backfill queries.
  /// [changeStreamName] The Spanner change stream name to use.
  /// [excludeObjects] Spanner objects to retrieve from the source.
  /// [fgacRole] The FGAC role to use for Spanner queries.
  /// [includeObjects] Spanner objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Max concurrent backfill tasks.
  /// [maxConcurrentCdcTasks] Max concurrent CDC tasks.
  /// [spannerRpcPriority] The RPC priority to use for Spanner queries.
  const StreamSourceConfigSpannerSourceConfig({
    this.backfillDataBoostEnabled,
    this.changeStreamName,
    this.excludeObjects,
    this.fgacRole,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.spannerRpcPriority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backfillDataBoostEnabled': ?backfillDataBoostEnabled,
      'changeStreamName': ?changeStreamName,
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSpannerSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'fgacRole': ?fgacRole,
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSpannerSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'spannerRpcPriority': ?spannerRpcPriority,
    };
  }

  factory StreamSourceConfigSpannerSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfig(
      backfillDataBoostEnabled: (() { final guardedValue = map['backfillDataBoostEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      changeStreamName: (() { final guardedValue = map['changeStreamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeObjects: (() { final guardedValue = map['excludeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSpannerSourceConfigExcludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fgacRole: (() { final guardedValue = map['fgacRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeObjects: (() { final guardedValue = map['includeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSpannerSourceConfigIncludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxConcurrentBackfillTasks: (() { final guardedValue = map['maxConcurrentBackfillTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentCdcTasks: (() { final guardedValue = map['maxConcurrentCdcTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      spannerRpcPriority: (() { final guardedValue = map['spannerRpcPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

