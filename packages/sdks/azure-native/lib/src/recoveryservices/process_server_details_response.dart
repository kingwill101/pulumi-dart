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
  const ProcessServerDetailsResponse({
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
      availableMemoryInBytes: pulumi.Input.fromValue((map['availableMemoryInBytes'] as num).toDouble()),
      availableSpaceInBytes: pulumi.Input.fromValue((map['availableSpaceInBytes'] as num).toDouble()),
      biosId: pulumi.Input.fromValue(map['biosId'] as String),
      diskUsageStatus: pulumi.Input.fromValue(map['diskUsageStatus'] as String),
      fabricObjectId: pulumi.Input.fromValue(map['fabricObjectId'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      freeSpacePercentage: pulumi.Input.fromValue((map['freeSpacePercentage'] as num).toDouble()),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors']!, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      historicHealth: pulumi.Input.fromValue(map['historicHealth'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
      lastHeartbeatUtc: pulumi.Input.fromValue(map['lastHeartbeatUtc'] as String),
      memoryUsagePercentage: pulumi.Input.fromValue((map['memoryUsagePercentage'] as num).toDouble()),
      memoryUsageStatus: pulumi.Input.fromValue(map['memoryUsageStatus'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      processorUsagePercentage: pulumi.Input.fromValue((map['processorUsagePercentage'] as num).toDouble()),
      processorUsageStatus: pulumi.Input.fromValue(map['processorUsageStatus'] as String),
      protectedItemCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['protectedItemCount'])),
      systemLoad: pulumi.Input.fromValue((map['systemLoad'] as num).toDouble()),
      systemLoadStatus: pulumi.Input.fromValue(map['systemLoadStatus'] as String),
      throughputInBytes: pulumi.Input.fromValue((map['throughputInBytes'] as num).toDouble()),
      throughputStatus: pulumi.Input.fromValue(map['throughputStatus'] as String),
      throughputUploadPendingDataInBytes: pulumi.Input.fromValue((map['throughputUploadPendingDataInBytes'] as num).toDouble()),
      totalMemoryInBytes: pulumi.Input.fromValue((map['totalMemoryInBytes'] as num).toDouble()),
      totalSpaceInBytes: pulumi.Input.fromValue((map['totalSpaceInBytes'] as num).toDouble()),
      usedMemoryInBytes: pulumi.Input.fromValue((map['usedMemoryInBytes'] as num).toDouble()),
      usedSpaceInBytes: pulumi.Input.fromValue((map['usedSpaceInBytes'] as num).toDouble()),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
