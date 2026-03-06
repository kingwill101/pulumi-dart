// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms_response.dart';

/// MySQL source configuration
class MysqlSourceConfigResponse {
  /// MySQL objects to exclude from the stream.
  final pulumi.Input<MysqlRdbmsResponse> excludeObjects;
  /// MySQL objects to retrieve from the source.
  final pulumi.Input<MysqlRdbmsResponse> includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int> maxConcurrentBackfillTasks;
  /// Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int> maxConcurrentCdcTasks;

  /// Creates a new [MysqlSourceConfigResponse].
  /// [excludeObjects] MySQL objects to exclude from the stream.
  /// [includeObjects] MySQL objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  const MysqlSourceConfigResponse({
    required this.excludeObjects,
    required this.includeObjects,
    required this.maxConcurrentBackfillTasks,
    required this.maxConcurrentCdcTasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': pulumi.Input.mapInputValue<MysqlRdbmsResponse, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': pulumi.Input.mapInputValue<MysqlRdbmsResponse, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': maxConcurrentCdcTasks,
    };
  }

  factory MysqlSourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfigResponse(
      excludeObjects: pulumi.Input.fromValue(MysqlRdbmsResponse.fromMap((map['excludeObjects']! as Map).cast<String, dynamic>())),
      includeObjects: pulumi.Input.fromValue(MysqlRdbmsResponse.fromMap((map['includeObjects']! as Map).cast<String, dynamic>())),
      maxConcurrentBackfillTasks: pulumi.Input.fromValue(map['maxConcurrentBackfillTasks'] as int),
      maxConcurrentCdcTasks: pulumi.Input.fromValue(map['maxConcurrentCdcTasks'] as int),
    );
  }
}

