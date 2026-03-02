// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_fabric_switch_provider_blocking_error_details_response.dart';
import 'master_target_server_response.dart';
import 'process_server_response.dart';
import 'run_as_account_response.dart';
import 'version_details_response.dart';

/// Store the fabric details specific to the VMware fabric.
class VMwareDetailsResponse {
  /// The number of source and target servers configured to talk to this CS.
  final pulumi.Input<String>? agentCount;
  /// Agent expiry date.
  final pulumi.Input<String>? agentExpiryDate;
  /// The agent Version.
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
  /// The CS service status.
  final pulumi.Input<String>? csServiceStatus;
  /// The database server load.
  final pulumi.Input<String>? databaseServerLoad;
  /// The database server load status.
  final pulumi.Input<String>? databaseServerLoadStatus;
  /// The host name.
  final pulumi.Input<String>? hostName;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'VMware'.
  final pulumi.Input<String> instanceType;
  /// The IP address.
  final pulumi.Input<String>? ipAddress;
  /// The last heartbeat received from CS server.
  final pulumi.Input<String>? lastHeartbeat;
  /// The list of Master Target servers associated with the fabric.
  final pulumi.Input<List<MasterTargetServerResponse>>? masterTargetServers;
  /// The memory usage status.
  final pulumi.Input<String>? memoryUsageStatus;
  /// The number of process servers.
  final pulumi.Input<String>? processServerCount;
  /// The list of Process Servers associated with the fabric.
  final pulumi.Input<List<ProcessServerResponse>>? processServers;
  /// The number of protected servers.
  final pulumi.Input<String>? protectedServers;
  /// PS template version.
  final pulumi.Input<String>? psTemplateVersion;
  /// The number of replication pairs configured in this CS.
  final pulumi.Input<String>? replicationPairCount;
  /// The list of run as accounts created on the server.
  final pulumi.Input<List<RunAsAccountResponse>>? runAsAccounts;
  /// The space usage status.
  final pulumi.Input<String>? spaceUsageStatus;
  /// CS SSL cert expiry date.
  final pulumi.Input<String>? sslCertExpiryDate;
  /// CS SSL cert expiry date.
  final pulumi.Input<int>? sslCertExpiryRemainingDays;
  /// The switch provider blocking error information.
  final pulumi.Input<List<InMageFabricSwitchProviderBlockingErrorDetailsResponse>>? switchProviderBlockingErrorDetails;
  /// The percentage of the system load.
  final pulumi.Input<String>? systemLoad;
  /// The system load status.
  final pulumi.Input<String>? systemLoadStatus;
  /// The total memory.
  final pulumi.Input<double>? totalMemoryInBytes;
  /// The total space.
  final pulumi.Input<double>? totalSpaceInBytes;
  /// Version status.
  final pulumi.Input<String>? versionStatus;
  /// The web load.
  final pulumi.Input<String>? webLoad;
  /// The web load status.
  final pulumi.Input<String>? webLoadStatus;

  /// Creates a new [VMwareDetailsResponse].
  /// [agentCount] The number of source and target servers configured to talk to this CS.
  /// [agentExpiryDate] Agent expiry date.
  /// [agentVersion] The agent Version.
  /// [agentVersionDetails] The agent version details.
  /// [availableMemoryInBytes] The available memory.
  /// [availableSpaceInBytes] The available space.
  /// [cpuLoad] The percentage of the CPU load.
  /// [cpuLoadStatus] The CPU load status.
  /// [csServiceStatus] The CS service status.
  /// [databaseServerLoad] The database server load.
  /// [databaseServerLoadStatus] The database server load status.
  /// [hostName] The host name.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [ipAddress] The IP address.
  /// [lastHeartbeat] The last heartbeat received from CS server.
  /// [masterTargetServers] The list of Master Target servers associated with the fabric.
  /// [memoryUsageStatus] The memory usage status.
  /// [processServerCount] The number of process servers.
  /// [processServers] The list of Process Servers associated with the fabric.
  /// [protectedServers] The number of protected servers.
  /// [psTemplateVersion] PS template version.
  /// [replicationPairCount] The number of replication pairs configured in this CS.
  /// [runAsAccounts] The list of run as accounts created on the server.
  /// [spaceUsageStatus] The space usage status.
  /// [sslCertExpiryDate] CS SSL cert expiry date.
  /// [sslCertExpiryRemainingDays] CS SSL cert expiry date.
  /// [switchProviderBlockingErrorDetails] The switch provider blocking error information.
  /// [systemLoad] The percentage of the system load.
  /// [systemLoadStatus] The system load status.
  /// [totalMemoryInBytes] The total memory.
  /// [totalSpaceInBytes] The total space.
  /// [versionStatus] Version status.
  /// [webLoad] The web load.
  /// [webLoadStatus] The web load status.
  VMwareDetailsResponse({
    this.agentCount,
    this.agentExpiryDate,
    this.agentVersion,
    this.agentVersionDetails,
    this.availableMemoryInBytes,
    this.availableSpaceInBytes,
    this.cpuLoad,
    this.cpuLoadStatus,
    this.csServiceStatus,
    this.databaseServerLoad,
    this.databaseServerLoadStatus,
    this.hostName,
    required this.instanceType,
    this.ipAddress,
    this.lastHeartbeat,
    this.masterTargetServers,
    this.memoryUsageStatus,
    this.processServerCount,
    this.processServers,
    this.protectedServers,
    this.psTemplateVersion,
    this.replicationPairCount,
    this.runAsAccounts,
    this.spaceUsageStatus,
    this.sslCertExpiryDate,
    this.sslCertExpiryRemainingDays,
    this.switchProviderBlockingErrorDetails,
    this.systemLoad,
    this.systemLoadStatus,
    this.totalMemoryInBytes,
    this.totalSpaceInBytes,
    this.versionStatus,
    this.webLoad,
    this.webLoadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCount': ?agentCount,
      'agentExpiryDate': ?agentExpiryDate,
      'agentVersion': ?agentVersion,
      'agentVersionDetails': ?pulumi.Input.mapOptionalInputValue<VersionDetailsResponse, Map<String, dynamic>>(agentVersionDetails, (value) => value.toMap()),
      'availableMemoryInBytes': ?availableMemoryInBytes,
      'availableSpaceInBytes': ?availableSpaceInBytes,
      'cpuLoad': ?cpuLoad,
      'cpuLoadStatus': ?cpuLoadStatus,
      'csServiceStatus': ?csServiceStatus,
      'databaseServerLoad': ?databaseServerLoad,
      'databaseServerLoadStatus': ?databaseServerLoadStatus,
      'hostName': ?hostName,
      'instanceType': instanceType,
      'ipAddress': ?ipAddress,
      'lastHeartbeat': ?lastHeartbeat,
      'masterTargetServers': ?pulumi.Input.mapOptionalInputValue<List<MasterTargetServerResponse>, List<Map<String, dynamic>>>(masterTargetServers, (value) => pulumi.Input.encodeList<MasterTargetServerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memoryUsageStatus': ?memoryUsageStatus,
      'processServerCount': ?processServerCount,
      'processServers': ?pulumi.Input.mapOptionalInputValue<List<ProcessServerResponse>, List<Map<String, dynamic>>>(processServers, (value) => pulumi.Input.encodeList<ProcessServerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedServers': ?protectedServers,
      'psTemplateVersion': ?psTemplateVersion,
      'replicationPairCount': ?replicationPairCount,
      'runAsAccounts': ?pulumi.Input.mapOptionalInputValue<List<RunAsAccountResponse>, List<Map<String, dynamic>>>(runAsAccounts, (value) => pulumi.Input.encodeList<RunAsAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spaceUsageStatus': ?spaceUsageStatus,
      'sslCertExpiryDate': ?sslCertExpiryDate,
      'sslCertExpiryRemainingDays': ?sslCertExpiryRemainingDays,
      'switchProviderBlockingErrorDetails': ?pulumi.Input.mapOptionalInputValue<List<InMageFabricSwitchProviderBlockingErrorDetailsResponse>, List<Map<String, dynamic>>>(switchProviderBlockingErrorDetails, (value) => pulumi.Input.encodeList<InMageFabricSwitchProviderBlockingErrorDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemLoad': ?systemLoad,
      'systemLoadStatus': ?systemLoadStatus,
      'totalMemoryInBytes': ?totalMemoryInBytes,
      'totalSpaceInBytes': ?totalSpaceInBytes,
      'versionStatus': ?versionStatus,
      'webLoad': ?webLoad,
      'webLoadStatus': ?webLoadStatus,
    };
  }

  factory VMwareDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareDetailsResponse(
      agentCount: map['agentCount'] == null ? null : (map['agentCount']! as String).input(),
      agentExpiryDate: map['agentExpiryDate'] == null ? null : (map['agentExpiryDate']! as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      agentVersionDetails: map['agentVersionDetails'] == null ? null : (VersionDetailsResponse.fromMap((map['agentVersionDetails']! as Map).cast<String, dynamic>())).input(),
      availableMemoryInBytes: map['availableMemoryInBytes'] == null ? null : (map['availableMemoryInBytes']! as double).input(),
      availableSpaceInBytes: map['availableSpaceInBytes'] == null ? null : (map['availableSpaceInBytes']! as double).input(),
      cpuLoad: map['cpuLoad'] == null ? null : (map['cpuLoad']! as String).input(),
      cpuLoadStatus: map['cpuLoadStatus'] == null ? null : (map['cpuLoadStatus']! as String).input(),
      csServiceStatus: map['csServiceStatus'] == null ? null : (map['csServiceStatus']! as String).input(),
      databaseServerLoad: map['databaseServerLoad'] == null ? null : (map['databaseServerLoad']! as String).input(),
      databaseServerLoadStatus: map['databaseServerLoadStatus'] == null ? null : (map['databaseServerLoadStatus']! as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      lastHeartbeat: map['lastHeartbeat'] == null ? null : (map['lastHeartbeat']! as String).input(),
      masterTargetServers: map['masterTargetServers'] == null ? null : (pulumi.Input.decodeList<MasterTargetServerResponse>(map['masterTargetServers']!, (value) => MasterTargetServerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memoryUsageStatus: map['memoryUsageStatus'] == null ? null : (map['memoryUsageStatus']! as String).input(),
      processServerCount: map['processServerCount'] == null ? null : (map['processServerCount']! as String).input(),
      processServers: map['processServers'] == null ? null : (pulumi.Input.decodeList<ProcessServerResponse>(map['processServers']!, (value) => ProcessServerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectedServers: map['protectedServers'] == null ? null : (map['protectedServers']! as String).input(),
      psTemplateVersion: map['psTemplateVersion'] == null ? null : (map['psTemplateVersion']! as String).input(),
      replicationPairCount: map['replicationPairCount'] == null ? null : (map['replicationPairCount']! as String).input(),
      runAsAccounts: map['runAsAccounts'] == null ? null : (pulumi.Input.decodeList<RunAsAccountResponse>(map['runAsAccounts']!, (value) => RunAsAccountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spaceUsageStatus: map['spaceUsageStatus'] == null ? null : (map['spaceUsageStatus']! as String).input(),
      sslCertExpiryDate: map['sslCertExpiryDate'] == null ? null : (map['sslCertExpiryDate']! as String).input(),
      sslCertExpiryRemainingDays: map['sslCertExpiryRemainingDays'] == null ? null : (map['sslCertExpiryRemainingDays']! as int).input(),
      switchProviderBlockingErrorDetails: map['switchProviderBlockingErrorDetails'] == null ? null : (pulumi.Input.decodeList<InMageFabricSwitchProviderBlockingErrorDetailsResponse>(map['switchProviderBlockingErrorDetails']!, (value) => InMageFabricSwitchProviderBlockingErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      systemLoad: map['systemLoad'] == null ? null : (map['systemLoad']! as String).input(),
      systemLoadStatus: map['systemLoadStatus'] == null ? null : (map['systemLoadStatus']! as String).input(),
      totalMemoryInBytes: map['totalMemoryInBytes'] == null ? null : (map['totalMemoryInBytes']! as double).input(),
      totalSpaceInBytes: map['totalSpaceInBytes'] == null ? null : (map['totalSpaceInBytes']! as double).input(),
      versionStatus: map['versionStatus'] == null ? null : (map['versionStatus']! as String).input(),
      webLoad: map['webLoad'] == null ? null : (map['webLoad']! as String).input(),
      webLoadStatus: map['webLoadStatus'] == null ? null : (map['webLoadStatus']! as String).input(),
    );
  }
}

