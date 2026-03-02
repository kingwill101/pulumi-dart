// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_exclude_objects.dart';
import 'stream_source_config_mongodb_source_config_include_objects.dart';

class StreamSourceConfigMongodbSourceConfig {
  /// MongoDB collections to include in the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigMongodbSourceConfigExcludeObjects>? excludeObjects;
  /// MongoDB collections to include in the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigMongodbSourceConfigIncludeObjects>? includeObjects;
  /// Optional. Maximum number of concurrent backfill tasks. The number
  /// should be non-negative and less than or equal to 50. If not set
  /// (or set to 0), the system''s default value is used
  final pulumi.Input<int>? maxConcurrentBackfillTasks;

  /// Creates a new [StreamSourceConfigMongodbSourceConfig].
  /// [excludeObjects] MongoDB collections to include in the stream.
  /// [includeObjects] MongoDB collections to include in the stream.
  /// [maxConcurrentBackfillTasks] Optional. Maximum number of concurrent backfill tasks. The number
  StreamSourceConfigMongodbSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigMongodbSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigMongodbSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
    };
  }

  factory StreamSourceConfigMongodbSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfig(
      excludeObjects: map['excludeObjects'] == null ? null : (StreamSourceConfigMongodbSourceConfigExcludeObjects.fromMap((map['excludeObjects'] as Map).cast<String, dynamic>())).input(),
      includeObjects: map['includeObjects'] == null ? null : (StreamSourceConfigMongodbSourceConfigIncludeObjects.fromMap((map['includeObjects'] as Map).cast<String, dynamic>())).input(),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : (map['maxConcurrentBackfillTasks'] as int).input(),
    );
  }
}

