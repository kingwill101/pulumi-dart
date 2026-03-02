// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';
import 'mobility_service_update_response.dart';
import 'version_details_response.dart';

/// Details of the Process Server.
class ProcessServerResponse {
  /// Agent expiry date.
  final pulumi.Input<String>? agentExpiryDate;
  /// The version of the scout component on the server.
  final pulumi.Input<String>? agentVersion;
  /// The agent version details.
  final pulumi.Input<VersionDetailsResponse>? agentVersionDetails;
  /// The available memory.
  final pulumi.Input<double>? availableMemoryInBytes;
  /// The available space.
  final pulumi.Input<double>? availableSpaceInBytes;
  /// The percentage of the CPU load.
  final pulumi.Input<String>? cpuLoad;
  /// The CPU load status.
  final pulumi.Input<String>? cpuLoadStatus;
  /// The Process Server's friendly name.
  final pulumi.Input<String>? friendlyName;
  /// The health of Process Server.
  final pulumi.Input<String> health;
  /// Health errors.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrors;
  /// The agent generated Id.
  final pulumi.Input<String>? hostId;
  /// The Process Server Id.
  final pulumi.Input<String>? id;
  /// The IP address of the server.
  final pulumi.Input<String>? ipAddress;
  /// The last heartbeat received from the server.
  final pulumi.Input<String>? lastHeartbeat;
  /// The servers configured with this PS.
  final pulumi.Input<String>? machineCount;
  /// The MARS communication status.
  final pulumi.Input<String> marsCommunicationStatus;
  /// The MARS registration status.
  final pulumi.Input<String> marsRegistrationStatus;
  /// The memory usage status.
  final pulumi.Input<String>? memoryUsageStatus;
  /// The list of the mobility service updates available on the Process Server.
  final pulumi.Input<List<MobilityServiceUpdateResponse>>? mobilityServiceUpdates;
  /// The OS type of the server.
  final pulumi.Input<String>? osType;
  /// OS Version of the process server. Note: This will get populated if user has CS version greater than 9.12.0.0.
  final pulumi.Input<String>? osVersion;
  /// The PS service status.
  final pulumi.Input<String>? psServiceStatus;
  /// The process server stats refresh time.
  final pulumi.Input<String> psStatsRefreshTime;
  /// The number of replication pairs configured in this PS.
  final pulumi.Input<String>? replicationPairCount;
  /// The space usage status.
  final pulumi.Input<String>? spaceUsageStatus;
  /// The PS SSL cert expiry date.
  final pulumi.Input<String>? sslCertExpiryDate;
  /// CS SSL cert expiry date.
  final pulumi.Input<int>? sslCertExpiryRemainingDays;
  /// The percentage of the system load.
  final pulumi.Input<String>? systemLoad;
  /// The system load status.
  final pulumi.Input<String>? systemLoadStatus;
  /// The throughput in bytes.
  final pulumi.Input<double> throughputInBytes;
  /// The throughput in MBps.
  final pulumi.Input<double> throughputInMBps;
  /// The throughput status.
  final pulumi.Input<String> throughputStatus;
  /// The uploading pending data in bytes.
  final pulumi.Input<double> throughputUploadPendingDataInBytes;
  /// The total memory.
  final pulumi.Input<double>? totalMemoryInBytes;
  /// The total space.
  final pulumi.Input<double>? totalSpaceInBytes;
  /// Version status.
  final pulumi.Input<String>? versionStatus;

  /// Creates a new [ProcessServerResponse].
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The version of the scout component on the server.
  /// [agentVersionDetails] The agent version details.
  /// [availableMemoryInBytes] The available memory.
  /// [availableSpaceInBytes] The available space.
  /// [cpuLoad] The percentage of the CPU load.
  /// [cpuLoadStatus] The CPU load status.
  /// [friendlyName] The Process Server's friendly name.
  /// [health] The health of Process Server.
  /// [healthErrors] Health errors.
  /// [hostId] The agent generated Id.
  /// [id] The Process Server Id.
  /// [ipAddress] The IP address of the server.
  /// [lastHeartbeat] The last heartbeat received from the server.
  /// [machineCount] The servers configured with this PS.
  /// [marsCommunicationStatus] The MARS communication status.
  /// [marsRegistrationStatus] The MARS registration status.
  /// [memoryUsageStatus] The memory usage status.
  /// [mobilityServiceUpdates] The list of the mobility service updates available on the Process Server.
  /// [osType] The OS type of the server.
  /// [osVersion] OS Version of the process server. Note: This will get populated if user has CS version greater than 9.12.0.0.
  /// [psServiceStatus] The PS service status.
  /// [psStatsRefreshTime] The process server stats refresh time.
  /// [replicationPairCount] The number of replication pairs configured in this PS.
  /// [spaceUsageStatus] The space usage status.
  /// [sslCertExpiryDate] The PS SSL cert expiry date.
  /// [sslCertExpiryRemainingDays] CS SSL cert expiry date.
  /// [systemLoad] The percentage of the system load.
  /// [systemLoadStatus] The system load status.
  /// [throughputInBytes] The throughput in bytes.
  /// [throughputInMBps] The throughput in MBps.
  /// [throughputStatus] The throughput status.
  /// [throughputUploadPendingDataInBytes] The uploading pending data in bytes.
  /// [totalMemoryInBytes] The total memory.
  /// [totalSpaceInBytes] The total space.
  /// [versionStatus] Version status.
  ProcessServerResponse({
    this.agentExpiryDate,
    this.agentVersion,
    this.agentVersionDetails,
    this.availableMemoryInBytes,
    this.availableSpaceInBytes,
    this.cpuLoad,
    this.cpuLoadStatus,
    this.friendlyName,
    required this.health,
    this.healthErrors,
    this.hostId,
    this.id,
    this.ipAddress,
    this.lastHeartbeat,
    this.machineCount,
    required this.marsCommunicationStatus,
    required this.marsRegistrationStatus,
    this.memoryUsageStatus,
    this.mobilityServiceUpdates,
    this.osType,
    this.osVersion,
    this.psServiceStatus,
    required this.psStatsRefreshTime,
    this.replicationPairCount,
    this.spaceUsageStatus,
    this.sslCertExpiryDate,
    this.sslCertExpiryRemainingDays,
    this.systemLoad,
    this.systemLoadStatus,
    required this.throughputInBytes,
    required this.throughputInMBps,
    required this.throughputStatus,
    required this.throughputUploadPendingDataInBytes,
    this.totalMemoryInBytes,
    this.totalSpaceInBytes,
    this.versionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'agentVersionDetails': ?pulumi.Input.mapOptionalInputValue<VersionDetailsResponse, Map<String, dynamic>>(agentVersionDetails, (value) => value.toMap()),
      'availableMemoryInBytes': ?availableMemoryInBytes,
      'availableSpaceInBytes': ?availableSpaceInBytes,
      'cpuLoad': ?cpuLoad,
      'cpuLoadStatus': ?cpuLoadStatus,
      'friendlyName': ?friendlyName,
      'health': health,
      'healthErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostId': ?hostId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'machineCount': ?machineCount,
      'marsCommunicationStatus': marsCommunicationStatus,
      'marsRegistrationStatus': marsRegistrationStatus,
      'memoryUsageStatus': ?memoryUsageStatus,
      'mobilityServiceUpdates': ?pulumi.Input.mapOptionalInputValue<List<MobilityServiceUpdateResponse>, List<Map<String, dynamic>>>(mobilityServiceUpdates, (value) => pulumi.Input.encodeList<MobilityServiceUpdateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osType': ?osType,
      'osVersion': ?osVersion,
      'psServiceStatus': ?psServiceStatus,
      'psStatsRefreshTime': psStatsRefreshTime,
      'replicationPairCount': ?replicationPairCount,
      'spaceUsageStatus': ?spaceUsageStatus,
      'sslCertExpiryDate': ?sslCertExpiryDate,
      'sslCertExpiryRemainingDays': ?sslCertExpiryRemainingDays,
      'systemLoad': ?systemLoad,
      'systemLoadStatus': ?systemLoadStatus,
      'throughputInBytes': throughputInBytes,
      'throughputInMBps': throughputInMBps,
      'throughputStatus': throughputStatus,
      'throughputUploadPendingDataInBytes': throughputUploadPendingDataInBytes,
      'totalMemoryInBytes': ?totalMemoryInBytes,
      'totalSpaceInBytes': ?totalSpaceInBytes,
      'versionStatus': ?versionStatus,
    };
  }

  factory ProcessServerResponse.fromMap(Map<String, dynamic> map) {
    return ProcessServerResponse(
      agentExpiryDate: map['agentExpiryDate'] == null ? null : (map['agentExpiryDate'] as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion'] as String).input(),
      agentVersionDetails: map['agentVersionDetails'] == null ? null : (VersionDetailsResponse.fromMap((map['agentVersionDetails'] as Map).cast<String, dynamic>())).input(),
      availableMemoryInBytes: map['availableMemoryInBytes'] == null ? null : (map['availableMemoryInBytes'] as double).input(),
      availableSpaceInBytes: map['availableSpaceInBytes'] == null ? null : (map['availableSpaceInBytes'] as double).input(),
      cpuLoad: map['cpuLoad'] == null ? null : (map['cpuLoad'] as String).input(),
      cpuLoadStatus: map['cpuLoadStatus'] == null ? null : (map['cpuLoadStatus'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      health: (map['health'] as String).input(),
      healthErrors: map['healthErrors'] == null ? null : (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostId: map['hostId'] == null ? null : (map['hostId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      lastHeartbeat: map['lastHeartbeat'] == null ? null : (map['lastHeartbeat'] as String).input(),
      machineCount: map['machineCount'] == null ? null : (map['machineCount'] as String).input(),
      marsCommunicationStatus: (map['marsCommunicationStatus'] as String).input(),
      marsRegistrationStatus: (map['marsRegistrationStatus'] as String).input(),
      memoryUsageStatus: map['memoryUsageStatus'] == null ? null : (map['memoryUsageStatus'] as String).input(),
      mobilityServiceUpdates: map['mobilityServiceUpdates'] == null ? null : (pulumi.Input.decodeList<MobilityServiceUpdateResponse>(map['mobilityServiceUpdates'], (value) => MobilityServiceUpdateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion'] as String).input(),
      psServiceStatus: map['psServiceStatus'] == null ? null : (map['psServiceStatus'] as String).input(),
      psStatsRefreshTime: (map['psStatsRefreshTime'] as String).input(),
      replicationPairCount: map['replicationPairCount'] == null ? null : (map['replicationPairCount'] as String).input(),
      spaceUsageStatus: map['spaceUsageStatus'] == null ? null : (map['spaceUsageStatus'] as String).input(),
      sslCertExpiryDate: map['sslCertExpiryDate'] == null ? null : (map['sslCertExpiryDate'] as String).input(),
      sslCertExpiryRemainingDays: map['sslCertExpiryRemainingDays'] == null ? null : (map['sslCertExpiryRemainingDays'] as int).input(),
      systemLoad: map['systemLoad'] == null ? null : (map['systemLoad'] as String).input(),
      systemLoadStatus: map['systemLoadStatus'] == null ? null : (map['systemLoadStatus'] as String).input(),
      throughputInBytes: (map['throughputInBytes'] as double).input(),
      throughputInMBps: (map['throughputInMBps'] as double).input(),
      throughputStatus: (map['throughputStatus'] as String).input(),
      throughputUploadPendingDataInBytes: (map['throughputUploadPendingDataInBytes'] as double).input(),
      totalMemoryInBytes: map['totalMemoryInBytes'] == null ? null : (map['totalMemoryInBytes'] as double).input(),
      totalSpaceInBytes: map['totalSpaceInBytes'] == null ? null : (map['totalSpaceInBytes'] as double).input(),
      versionStatus: map['versionStatus'] == null ? null : (map['versionStatus'] as String).input(),
    );
  }
}

