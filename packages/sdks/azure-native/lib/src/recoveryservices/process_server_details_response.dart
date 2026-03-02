// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Process server details.
class ProcessServerDetailsResponse {
  /// The available memory.
  final pulumi.Input<double> availableMemoryInBytes;
  /// The available disk space.
  final pulumi.Input<double> availableSpaceInBytes;
  /// The process server Bios Id.
  final pulumi.Input<String> biosId;
  /// The disk usage status.
  final pulumi.Input<String> diskUsageStatus;
  /// The fabric object Id.
  final pulumi.Input<String> fabricObjectId;
  /// The process server Fqdn.
  final pulumi.Input<String> fqdn;
  /// The free disk space percentage.
  final pulumi.Input<double> freeSpacePercentage;
  /// The health of the process server.
  final pulumi.Input<String> health;
  /// The health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;
  /// The historic health of the process server based on the health in last 24 hours.
  final pulumi.Input<String> historicHealth;
  /// The process server Id.
  final pulumi.Input<String> id;
  /// The list of IP addresses for communicating with the RCM component.
  final pulumi.Input<List<String>> ipAddresses;
  /// The last heartbeat received from the process server.
  final pulumi.Input<String> lastHeartbeatUtc;
  /// The memory usage percentage.
  final pulumi.Input<double> memoryUsagePercentage;
  /// The memory usage status.
  final pulumi.Input<String> memoryUsageStatus;
  /// The process server name.
  final pulumi.Input<String> name;
  /// The processor usage percentage.
  final pulumi.Input<double> processorUsagePercentage;
  /// The processor usage status.
  final pulumi.Input<String> processorUsageStatus;
  /// The protected item count.
  final pulumi.Input<int> protectedItemCount;
  /// The system load.
  final pulumi.Input<double> systemLoad;
  /// The system load status.
  final pulumi.Input<String> systemLoadStatus;
  /// The throughput in bytes.
  final pulumi.Input<double> throughputInBytes;
  /// The throughput status.
  final pulumi.Input<String> throughputStatus;
  /// The uploading pending data in bytes.
  final pulumi.Input<double> throughputUploadPendingDataInBytes;
  /// The total memory.
  final pulumi.Input<double> totalMemoryInBytes;
  /// The total disk space.
  final pulumi.Input<double> totalSpaceInBytes;
  /// The used memory.
  final pulumi.Input<double> usedMemoryInBytes;
  /// The used disk space.
  final pulumi.Input<double> usedSpaceInBytes;
  /// The version.
  final pulumi.Input<String> version;

  /// Creates a new [ProcessServerDetailsResponse].
  /// [availableMemoryInBytes] The available memory.
  /// [availableSpaceInBytes] The available disk space.
  /// [biosId] The process server Bios Id.
  /// [diskUsageStatus] The disk usage status.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The process server Fqdn.
  /// [freeSpacePercentage] The free disk space percentage.
  /// [health] The health of the process server.
  /// [healthErrors] The health errors.
  /// [historicHealth] The historic health of the process server based on the health in last 24 hours.
  /// [id] The process server Id.
  /// [ipAddresses] The list of IP addresses for communicating with the RCM component.
  /// [lastHeartbeatUtc] The last heartbeat received from the process server.
  /// [memoryUsagePercentage] The memory usage percentage.
  /// [memoryUsageStatus] The memory usage status.
  /// [name] The process server name.
  /// [processorUsagePercentage] The processor usage percentage.
  /// [processorUsageStatus] The processor usage status.
  /// [protectedItemCount] The protected item count.
  /// [systemLoad] The system load.
  /// [systemLoadStatus] The system load status.
  /// [throughputInBytes] The throughput in bytes.
  /// [throughputStatus] The throughput status.
  /// [throughputUploadPendingDataInBytes] The uploading pending data in bytes.
  /// [totalMemoryInBytes] The total memory.
  /// [totalSpaceInBytes] The total disk space.
  /// [usedMemoryInBytes] The used memory.
  /// [usedSpaceInBytes] The used disk space.
  /// [version] The version.
  ProcessServerDetailsResponse({
    required this.availableMemoryInBytes,
    required this.availableSpaceInBytes,
    required this.biosId,
    required this.diskUsageStatus,
    required this.fabricObjectId,
    required this.fqdn,
    required this.freeSpacePercentage,
    required this.health,
    required this.healthErrors,
    required this.historicHealth,
    required this.id,
    required this.ipAddresses,
    required this.lastHeartbeatUtc,
    required this.memoryUsagePercentage,
    required this.memoryUsageStatus,
    required this.name,
    required this.processorUsagePercentage,
    required this.processorUsageStatus,
    required this.protectedItemCount,
    required this.systemLoad,
    required this.systemLoadStatus,
    required this.throughputInBytes,
    required this.throughputStatus,
    required this.throughputUploadPendingDataInBytes,
    required this.totalMemoryInBytes,
    required this.totalSpaceInBytes,
    required this.usedMemoryInBytes,
    required this.usedSpaceInBytes,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableMemoryInBytes': availableMemoryInBytes,
      'availableSpaceInBytes': availableSpaceInBytes,
      'biosId': biosId,
      'diskUsageStatus': diskUsageStatus,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'freeSpacePercentage': freeSpacePercentage,
      'health': health,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'historicHealth': historicHealth,
      'id': id,
      'ipAddresses': ipAddresses,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'memoryUsagePercentage': memoryUsagePercentage,
      'memoryUsageStatus': memoryUsageStatus,
      'name': name,
      'processorUsagePercentage': processorUsagePercentage,
      'processorUsageStatus': processorUsageStatus,
      'protectedItemCount': protectedItemCount,
      'systemLoad': systemLoad,
      'systemLoadStatus': systemLoadStatus,
      'throughputInBytes': throughputInBytes,
      'throughputStatus': throughputStatus,
      'throughputUploadPendingDataInBytes': throughputUploadPendingDataInBytes,
      'totalMemoryInBytes': totalMemoryInBytes,
      'totalSpaceInBytes': totalSpaceInBytes,
      'usedMemoryInBytes': usedMemoryInBytes,
      'usedSpaceInBytes': usedSpaceInBytes,
      'version': version,
    };
  }

  factory ProcessServerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProcessServerDetailsResponse(
      availableMemoryInBytes: (map['availableMemoryInBytes'] as double).input(),
      availableSpaceInBytes: (map['availableSpaceInBytes'] as double).input(),
      biosId: (map['biosId'] as String).input(),
      diskUsageStatus: (map['diskUsageStatus'] as String).input(),
      fabricObjectId: (map['fabricObjectId'] as String).input(),
      fqdn: (map['fqdn'] as String).input(),
      freeSpacePercentage: (map['freeSpacePercentage'] as double).input(),
      health: (map['health'] as String).input(),
      healthErrors: (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      historicHealth: (map['historicHealth'] as String).input(),
      id: (map['id'] as String).input(),
      ipAddresses: ((map['ipAddresses'] as List).cast<String>()).input(),
      lastHeartbeatUtc: (map['lastHeartbeatUtc'] as String).input(),
      memoryUsagePercentage: (map['memoryUsagePercentage'] as double).input(),
      memoryUsageStatus: (map['memoryUsageStatus'] as String).input(),
      name: (map['name'] as String).input(),
      processorUsagePercentage: (map['processorUsagePercentage'] as double).input(),
      processorUsageStatus: (map['processorUsageStatus'] as String).input(),
      protectedItemCount: (map['protectedItemCount'] as int).input(),
      systemLoad: (map['systemLoad'] as double).input(),
      systemLoadStatus: (map['systemLoadStatus'] as String).input(),
      throughputInBytes: (map['throughputInBytes'] as double).input(),
      throughputStatus: (map['throughputStatus'] as String).input(),
      throughputUploadPendingDataInBytes: (map['throughputUploadPendingDataInBytes'] as double).input(),
      totalMemoryInBytes: (map['totalMemoryInBytes'] as double).input(),
      totalSpaceInBytes: (map['totalSpaceInBytes'] as double).input(),
      usedMemoryInBytes: (map['usedMemoryInBytes'] as double).input(),
      usedSpaceInBytes: (map['usedSpaceInBytes'] as double).input(),
      version: (map['version'] as String).input(),
    );
  }
}

