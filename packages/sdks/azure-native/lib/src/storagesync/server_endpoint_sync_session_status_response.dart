// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_endpoint_files_not_syncing_error_response.dart';

/// Sync Session status object.
class ServerEndpointSyncSessionStatusResponse {
  /// Array of per-item errors coming from the last sync session.
  final pulumi.Input<List<ServerEndpointFilesNotSyncingErrorResponse>> filesNotSyncingErrors;
  /// Sync mode
  final pulumi.Input<String> lastSyncMode;
  /// Last sync per item error count.
  final pulumi.Input<double> lastSyncPerItemErrorCount;
  /// Last sync result (HResult)
  final pulumi.Input<int> lastSyncResult;
  /// Last sync success timestamp
  final pulumi.Input<String> lastSyncSuccessTimestamp;
  /// Last sync timestamp
  final pulumi.Input<String> lastSyncTimestamp;
  /// Count of persistent files not syncing.
  final pulumi.Input<double> persistentFilesNotSyncingCount;
  /// Count of transient files not syncing.
  final pulumi.Input<double> transientFilesNotSyncingCount;

  /// Creates a new [ServerEndpointSyncSessionStatusResponse].
  /// [filesNotSyncingErrors] Array of per-item errors coming from the last sync session.
  /// [lastSyncMode] Sync mode
  /// [lastSyncPerItemErrorCount] Last sync per item error count.
  /// [lastSyncResult] Last sync result (HResult)
  /// [lastSyncSuccessTimestamp] Last sync success timestamp
  /// [lastSyncTimestamp] Last sync timestamp
  /// [persistentFilesNotSyncingCount] Count of persistent files not syncing.
  /// [transientFilesNotSyncingCount] Count of transient files not syncing.
  ServerEndpointSyncSessionStatusResponse({
    required this.filesNotSyncingErrors,
    required this.lastSyncMode,
    required this.lastSyncPerItemErrorCount,
    required this.lastSyncResult,
    required this.lastSyncSuccessTimestamp,
    required this.lastSyncTimestamp,
    required this.persistentFilesNotSyncingCount,
    required this.transientFilesNotSyncingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesNotSyncingErrors': pulumi.Input.mapInputValue<List<ServerEndpointFilesNotSyncingErrorResponse>, List<Map<String, dynamic>>>(filesNotSyncingErrors, (value) => pulumi.Input.encodeList<ServerEndpointFilesNotSyncingErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastSyncMode': lastSyncMode,
      'lastSyncPerItemErrorCount': lastSyncPerItemErrorCount,
      'lastSyncResult': lastSyncResult,
      'lastSyncSuccessTimestamp': lastSyncSuccessTimestamp,
      'lastSyncTimestamp': lastSyncTimestamp,
      'persistentFilesNotSyncingCount': persistentFilesNotSyncingCount,
      'transientFilesNotSyncingCount': transientFilesNotSyncingCount,
    };
  }

  factory ServerEndpointSyncSessionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointSyncSessionStatusResponse(
      filesNotSyncingErrors: (pulumi.Input.decodeList<ServerEndpointFilesNotSyncingErrorResponse>(map['filesNotSyncingErrors'], (value) => ServerEndpointFilesNotSyncingErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastSyncMode: (map['lastSyncMode'] as String).input(),
      lastSyncPerItemErrorCount: (map['lastSyncPerItemErrorCount'] as double).input(),
      lastSyncResult: (map['lastSyncResult'] as int).input(),
      lastSyncSuccessTimestamp: (map['lastSyncSuccessTimestamp'] as String).input(),
      lastSyncTimestamp: (map['lastSyncTimestamp'] as String).input(),
      persistentFilesNotSyncingCount: (map['persistentFilesNotSyncingCount'] as double).input(),
      transientFilesNotSyncingCount: (map['transientFilesNotSyncingCount'] as double).input(),
    );
  }
}

