// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_release_config_recent_scheduled_release_record_error_status.dart';

class RepositoryReleaseConfigRecentScheduledReleaseRecord {
  /// (Output)
  /// The name of the created compilation result, if one was successfully created. Must be in the format projects/*/locations/*/repositories/*/compilationResults/*.
  final pulumi.Input<String?>? compilationResult;
  /// (Output)
  /// The error status encountered upon this attempt to create the compilation result, if the attempt was unsuccessful.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus>?>? errorStatuses;
  /// (Output)
  /// The timestamp of this release attempt.
  final pulumi.Input<String?>? releaseTime;

  /// Creates a new [RepositoryReleaseConfigRecentScheduledReleaseRecord].
  /// [compilationResult] (Output)
  /// [errorStatuses] (Output)
  /// [releaseTime] (Output)
  const RepositoryReleaseConfigRecentScheduledReleaseRecord({
    this.compilationResult,
    this.errorStatuses,
    this.releaseTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResult': ?compilationResult,
      'errorStatuses': ?pulumi.Input.mapOptionalInputValue<List<RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus>, List<Map<String, dynamic>>>(errorStatuses, (value) => pulumi.Input.encodeList<RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'releaseTime': ?releaseTime,
    };
  }

  factory RepositoryReleaseConfigRecentScheduledReleaseRecord.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigRecentScheduledReleaseRecord(
      compilationResult: (() { final guardedValue = map['compilationResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorStatuses: (() { final guardedValue = map['errorStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus>(guardedValue, (value) => RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      releaseTime: (() { final guardedValue = map['releaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
