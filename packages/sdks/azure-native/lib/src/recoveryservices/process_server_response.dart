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
  const ProcessServerResponse({
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
      agentExpiryDate: (() { final guardedValue = map['agentExpiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersionDetails: (() { final guardedValue = map['agentVersionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VersionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availableMemoryInBytes: (() { final guardedValue = map['availableMemoryInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      availableSpaceInBytes: (() { final guardedValue = map['availableSpaceInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      cpuLoad: (() { final guardedValue = map['cpuLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuLoadStatus: (() { final guardedValue = map['cpuLoadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: (() { final guardedValue = map['healthErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastHeartbeat: (() { final guardedValue = map['lastHeartbeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineCount: (() { final guardedValue = map['machineCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marsCommunicationStatus: pulumi.Input.fromValue(map['marsCommunicationStatus'] as String),
      marsRegistrationStatus: pulumi.Input.fromValue(map['marsRegistrationStatus'] as String),
      memoryUsageStatus: (() { final guardedValue = map['memoryUsageStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mobilityServiceUpdates: (() { final guardedValue = map['mobilityServiceUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MobilityServiceUpdateResponse>(guardedValue, (value) => MobilityServiceUpdateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      psServiceStatus: (() { final guardedValue = map['psServiceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      psStatsRefreshTime: pulumi.Input.fromValue(map['psStatsRefreshTime'] as String),
      replicationPairCount: (() { final guardedValue = map['replicationPairCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceUsageStatus: (() { final guardedValue = map['spaceUsageStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertExpiryDate: (() { final guardedValue = map['sslCertExpiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertExpiryRemainingDays: (() { final guardedValue = map['sslCertExpiryRemainingDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      systemLoad: (() { final guardedValue = map['systemLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemLoadStatus: (() { final guardedValue = map['systemLoadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughputInBytes: pulumi.Input.fromValue(map['throughputInBytes'] as double),
      throughputInMBps: pulumi.Input.fromValue(map['throughputInMBps'] as double),
      throughputStatus: pulumi.Input.fromValue(map['throughputStatus'] as String),
      throughputUploadPendingDataInBytes: pulumi.Input.fromValue(map['throughputUploadPendingDataInBytes'] as double),
      totalMemoryInBytes: (() { final guardedValue = map['totalMemoryInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalSpaceInBytes: (() { final guardedValue = map['totalSpaceInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      versionStatus: (() { final guardedValue = map['versionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

