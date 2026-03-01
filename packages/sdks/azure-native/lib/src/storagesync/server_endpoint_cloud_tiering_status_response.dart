// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_tiering_cache_performance_response.dart';
import 'cloud_tiering_date_policy_status_response.dart';
import 'cloud_tiering_files_not_tiering_response.dart';
import 'cloud_tiering_low_disk_mode_response.dart';
import 'cloud_tiering_space_savings_response.dart';
import 'cloud_tiering_volume_free_space_policy_status_response.dart';

/// Server endpoint cloud tiering status object.
class ServerEndpointCloudTieringStatusResponse {
  /// Information regarding how well the local cache on the server is performing.
  final CloudTieringCachePerformanceResponse cachePerformance;
  /// Status of the date policy
  final CloudTieringDatePolicyStatusResponse datePolicyStatus;
  /// Information regarding files that failed to be tiered
  final CloudTieringFilesNotTieringResponse filesNotTiering;
  /// Cloud tiering health state.
  final String health;
  /// The last updated timestamp of health state
  final String healthLastUpdatedTimestamp;
  /// Last cloud tiering result (HResult)
  final int lastCloudTieringResult;
  /// Last cloud tiering success timestamp
  final String lastSuccessTimestamp;
  /// Last updated timestamp
  final String lastUpdatedTimestamp;
  /// Information regarding the low disk mode state
  final CloudTieringLowDiskModeResponse lowDiskMode;
  /// Information regarding how much local space cloud tiering is saving.
  final CloudTieringSpaceSavingsResponse spaceSavings;
  /// Status of the volume free space policy
  final CloudTieringVolumeFreeSpacePolicyStatusResponse volumeFreeSpacePolicyStatus;

  /// Creates a new [ServerEndpointCloudTieringStatusResponse].
  /// [cachePerformance] Information regarding how well the local cache on the server is performing.
  /// [datePolicyStatus] Status of the date policy
  /// [filesNotTiering] Information regarding files that failed to be tiered
  /// [health] Cloud tiering health state.
  /// [healthLastUpdatedTimestamp] The last updated timestamp of health state
  /// [lastCloudTieringResult] Last cloud tiering result (HResult)
  /// [lastSuccessTimestamp] Last cloud tiering success timestamp
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [lowDiskMode] Information regarding the low disk mode state
  /// [spaceSavings] Information regarding how much local space cloud tiering is saving.
  /// [volumeFreeSpacePolicyStatus] Status of the volume free space policy
  ServerEndpointCloudTieringStatusResponse({
    required this.cachePerformance,
    required this.datePolicyStatus,
    required this.filesNotTiering,
    required this.health,
    required this.healthLastUpdatedTimestamp,
    required this.lastCloudTieringResult,
    required this.lastSuccessTimestamp,
    required this.lastUpdatedTimestamp,
    required this.lowDiskMode,
    required this.spaceSavings,
    required this.volumeFreeSpacePolicyStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePerformance': cachePerformance.toMap(),
      'datePolicyStatus': datePolicyStatus.toMap(),
      'filesNotTiering': filesNotTiering.toMap(),
      'health': health,
      'healthLastUpdatedTimestamp': healthLastUpdatedTimestamp,
      'lastCloudTieringResult': lastCloudTieringResult,
      'lastSuccessTimestamp': lastSuccessTimestamp,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'lowDiskMode': lowDiskMode.toMap(),
      'spaceSavings': spaceSavings.toMap(),
      'volumeFreeSpacePolicyStatus': volumeFreeSpacePolicyStatus.toMap(),
    };
  }

  factory ServerEndpointCloudTieringStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointCloudTieringStatusResponse(
      cachePerformance: CloudTieringCachePerformanceResponse.fromMap((map['cachePerformance'] as Map).cast<String, dynamic>()),
      datePolicyStatus: CloudTieringDatePolicyStatusResponse.fromMap((map['datePolicyStatus'] as Map).cast<String, dynamic>()),
      filesNotTiering: CloudTieringFilesNotTieringResponse.fromMap((map['filesNotTiering'] as Map).cast<String, dynamic>()),
      health: map['health'] as String,
      healthLastUpdatedTimestamp: map['healthLastUpdatedTimestamp'] as String,
      lastCloudTieringResult: map['lastCloudTieringResult'] as int,
      lastSuccessTimestamp: map['lastSuccessTimestamp'] as String,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      lowDiskMode: CloudTieringLowDiskModeResponse.fromMap((map['lowDiskMode'] as Map).cast<String, dynamic>()),
      spaceSavings: CloudTieringSpaceSavingsResponse.fromMap((map['spaceSavings'] as Map).cast<String, dynamic>()),
      volumeFreeSpacePolicyStatus: CloudTieringVolumeFreeSpacePolicyStatusResponse.fromMap((map['volumeFreeSpacePolicyStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

