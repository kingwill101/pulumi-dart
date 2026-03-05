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
      filesNotSyncingErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ServerEndpointFilesNotSyncingErrorResponse>(map['filesNotSyncingErrors']!, (value) => ServerEndpointFilesNotSyncingErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      lastSyncMode: pulumi.Input.fromValue(map['lastSyncMode'] as String),
      lastSyncPerItemErrorCount: pulumi.Input.fromValue(map['lastSyncPerItemErrorCount'] as double),
      lastSyncResult: pulumi.Input.fromValue(map['lastSyncResult'] as int),
      lastSyncSuccessTimestamp: pulumi.Input.fromValue(map['lastSyncSuccessTimestamp'] as String),
      lastSyncTimestamp: pulumi.Input.fromValue(map['lastSyncTimestamp'] as String),
      persistentFilesNotSyncingCount: pulumi.Input.fromValue(map['persistentFilesNotSyncingCount'] as double),
      transientFilesNotSyncingCount: pulumi.Input.fromValue(map['transientFilesNotSyncingCount'] as double),
    );
  }
}

