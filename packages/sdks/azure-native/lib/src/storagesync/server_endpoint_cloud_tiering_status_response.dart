// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_tiering_cache_performance_response.dart';
import 'cloud_tiering_date_policy_status_response.dart';
import 'cloud_tiering_files_not_tiering_response.dart';
import 'cloud_tiering_low_disk_mode_response.dart';
import 'cloud_tiering_space_savings_response.dart';
import 'cloud_tiering_volume_free_space_policy_status_response.dart';

/// Server endpoint cloud tiering status object.
class ServerEndpointCloudTieringStatusResponse {
  /// Information regarding how well the local cache on the server is performing.
  final pulumi.Input<CloudTieringCachePerformanceResponse> cachePerformance;
  /// Status of the date policy
  final pulumi.Input<CloudTieringDatePolicyStatusResponse> datePolicyStatus;
  /// Information regarding files that failed to be tiered
  final pulumi.Input<CloudTieringFilesNotTieringResponse> filesNotTiering;
  /// Cloud tiering health state.
  final pulumi.Input<String> health;
  /// The last updated timestamp of health state
  final pulumi.Input<String> healthLastUpdatedTimestamp;
  /// Last cloud tiering result (HResult)
  final pulumi.Input<int> lastCloudTieringResult;
  /// Last cloud tiering success timestamp
  final pulumi.Input<String> lastSuccessTimestamp;
  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;
  /// Information regarding the low disk mode state
  final pulumi.Input<CloudTieringLowDiskModeResponse> lowDiskMode;
  /// Information regarding how much local space cloud tiering is saving.
  final pulumi.Input<CloudTieringSpaceSavingsResponse> spaceSavings;
  /// Status of the volume free space policy
  final pulumi.Input<CloudTieringVolumeFreeSpacePolicyStatusResponse> volumeFreeSpacePolicyStatus;

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
      'cachePerformance': pulumi.Input.mapInputValue<CloudTieringCachePerformanceResponse, Map<String, dynamic>>(cachePerformance, (value) => value.toMap()),
      'datePolicyStatus': pulumi.Input.mapInputValue<CloudTieringDatePolicyStatusResponse, Map<String, dynamic>>(datePolicyStatus, (value) => value.toMap()),
      'filesNotTiering': pulumi.Input.mapInputValue<CloudTieringFilesNotTieringResponse, Map<String, dynamic>>(filesNotTiering, (value) => value.toMap()),
      'health': health,
      'healthLastUpdatedTimestamp': healthLastUpdatedTimestamp,
      'lastCloudTieringResult': lastCloudTieringResult,
      'lastSuccessTimestamp': lastSuccessTimestamp,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'lowDiskMode': pulumi.Input.mapInputValue<CloudTieringLowDiskModeResponse, Map<String, dynamic>>(lowDiskMode, (value) => value.toMap()),
      'spaceSavings': pulumi.Input.mapInputValue<CloudTieringSpaceSavingsResponse, Map<String, dynamic>>(spaceSavings, (value) => value.toMap()),
      'volumeFreeSpacePolicyStatus': pulumi.Input.mapInputValue<CloudTieringVolumeFreeSpacePolicyStatusResponse, Map<String, dynamic>>(volumeFreeSpacePolicyStatus, (value) => value.toMap()),
    };
  }

  factory ServerEndpointCloudTieringStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointCloudTieringStatusResponse(
      cachePerformance: pulumi.Input.fromValue(CloudTieringCachePerformanceResponse.fromMap((map['cachePerformance']! as Map).cast<String, dynamic>())),
      datePolicyStatus: pulumi.Input.fromValue(CloudTieringDatePolicyStatusResponse.fromMap((map['datePolicyStatus']! as Map).cast<String, dynamic>())),
      filesNotTiering: pulumi.Input.fromValue(CloudTieringFilesNotTieringResponse.fromMap((map['filesNotTiering']! as Map).cast<String, dynamic>())),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthLastUpdatedTimestamp: pulumi.Input.fromValue(map['healthLastUpdatedTimestamp'] as String),
      lastCloudTieringResult: pulumi.Input.fromValue(map['lastCloudTieringResult'] as int),
      lastSuccessTimestamp: pulumi.Input.fromValue(map['lastSuccessTimestamp'] as String),
      lastUpdatedTimestamp: pulumi.Input.fromValue(map['lastUpdatedTimestamp'] as String),
      lowDiskMode: pulumi.Input.fromValue(CloudTieringLowDiskModeResponse.fromMap((map['lowDiskMode']! as Map).cast<String, dynamic>())),
      spaceSavings: pulumi.Input.fromValue(CloudTieringSpaceSavingsResponse.fromMap((map['spaceSavings']! as Map).cast<String, dynamic>())),
      volumeFreeSpacePolicyStatus: pulumi.Input.fromValue(CloudTieringVolumeFreeSpacePolicyStatusResponse.fromMap((map['volumeFreeSpacePolicyStatus']! as Map).cast<String, dynamic>())),
    );
  }
}

