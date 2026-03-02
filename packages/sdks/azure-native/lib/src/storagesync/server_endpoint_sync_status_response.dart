// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_endpoint_background_data_download_activity_response.dart';
import 'server_endpoint_sync_activity_status_response.dart';
import 'server_endpoint_sync_session_status_response.dart';

/// Server Endpoint sync status
class ServerEndpointSyncStatusResponse {
  /// Background data download activity
  final pulumi.Input<ServerEndpointBackgroundDataDownloadActivityResponse> backgroundDataDownloadActivity;
  /// Combined Health Status.
  final pulumi.Input<String> combinedHealth;
  /// Download sync activity
  final pulumi.Input<ServerEndpointSyncActivityStatusResponse> downloadActivity;
  /// Download Health Status.
  final pulumi.Input<String> downloadHealth;
  /// Download Status
  final pulumi.Input<ServerEndpointSyncSessionStatusResponse> downloadStatus;
  /// Last Updated Timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;
  /// Offline Data Transfer State
  final pulumi.Input<String> offlineDataTransferStatus;
  /// Sync activity
  final pulumi.Input<String> syncActivity;
  /// Total count of persistent files not syncing (combined upload + download).
  final pulumi.Input<double> totalPersistentFilesNotSyncingCount;
  /// Upload sync activity
  final pulumi.Input<ServerEndpointSyncActivityStatusResponse> uploadActivity;
  /// Upload Health Status.
  final pulumi.Input<String> uploadHealth;
  /// Upload Status
  final pulumi.Input<ServerEndpointSyncSessionStatusResponse> uploadStatus;

  /// Creates a new [ServerEndpointSyncStatusResponse].
  /// [backgroundDataDownloadActivity] Background data download activity
  /// [combinedHealth] Combined Health Status.
  /// [downloadActivity] Download sync activity
  /// [downloadHealth] Download Health Status.
  /// [downloadStatus] Download Status
  /// [lastUpdatedTimestamp] Last Updated Timestamp
  /// [offlineDataTransferStatus] Offline Data Transfer State
  /// [syncActivity] Sync activity
  /// [totalPersistentFilesNotSyncingCount] Total count of persistent files not syncing (combined upload + download).
  /// [uploadActivity] Upload sync activity
  /// [uploadHealth] Upload Health Status.
  /// [uploadStatus] Upload Status
  ServerEndpointSyncStatusResponse({
    required this.backgroundDataDownloadActivity,
    required this.combinedHealth,
    required this.downloadActivity,
    required this.downloadHealth,
    required this.downloadStatus,
    required this.lastUpdatedTimestamp,
    required this.offlineDataTransferStatus,
    required this.syncActivity,
    required this.totalPersistentFilesNotSyncingCount,
    required this.uploadActivity,
    required this.uploadHealth,
    required this.uploadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundDataDownloadActivity': pulumi.Input.mapInputValue<ServerEndpointBackgroundDataDownloadActivityResponse, Map<String, dynamic>>(backgroundDataDownloadActivity, (value) => value.toMap()),
      'combinedHealth': combinedHealth,
      'downloadActivity': pulumi.Input.mapInputValue<ServerEndpointSyncActivityStatusResponse, Map<String, dynamic>>(downloadActivity, (value) => value.toMap()),
      'downloadHealth': downloadHealth,
      'downloadStatus': pulumi.Input.mapInputValue<ServerEndpointSyncSessionStatusResponse, Map<String, dynamic>>(downloadStatus, (value) => value.toMap()),
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'offlineDataTransferStatus': offlineDataTransferStatus,
      'syncActivity': syncActivity,
      'totalPersistentFilesNotSyncingCount': totalPersistentFilesNotSyncingCount,
      'uploadActivity': pulumi.Input.mapInputValue<ServerEndpointSyncActivityStatusResponse, Map<String, dynamic>>(uploadActivity, (value) => value.toMap()),
      'uploadHealth': uploadHealth,
      'uploadStatus': pulumi.Input.mapInputValue<ServerEndpointSyncSessionStatusResponse, Map<String, dynamic>>(uploadStatus, (value) => value.toMap()),
    };
  }

  factory ServerEndpointSyncStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointSyncStatusResponse(
      backgroundDataDownloadActivity: (ServerEndpointBackgroundDataDownloadActivityResponse.fromMap((map['backgroundDataDownloadActivity'] as Map).cast<String, dynamic>())).input(),
      combinedHealth: (map['combinedHealth'] as String).input(),
      downloadActivity: (ServerEndpointSyncActivityStatusResponse.fromMap((map['downloadActivity'] as Map).cast<String, dynamic>())).input(),
      downloadHealth: (map['downloadHealth'] as String).input(),
      downloadStatus: (ServerEndpointSyncSessionStatusResponse.fromMap((map['downloadStatus'] as Map).cast<String, dynamic>())).input(),
      lastUpdatedTimestamp: (map['lastUpdatedTimestamp'] as String).input(),
      offlineDataTransferStatus: (map['offlineDataTransferStatus'] as String).input(),
      syncActivity: (map['syncActivity'] as String).input(),
      totalPersistentFilesNotSyncingCount: (map['totalPersistentFilesNotSyncingCount'] as double).input(),
      uploadActivity: (ServerEndpointSyncActivityStatusResponse.fromMap((map['uploadActivity'] as Map).cast<String, dynamic>())).input(),
      uploadHealth: (map['uploadHealth'] as String).input(),
      uploadStatus: (ServerEndpointSyncSessionStatusResponse.fromMap((map['uploadStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

