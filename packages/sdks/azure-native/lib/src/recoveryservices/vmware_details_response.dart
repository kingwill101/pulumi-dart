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
  final String? agentCount;
  /// Agent expiry date.
  final String? agentExpiryDate;
  /// The agent Version.
  final String? agentVersion;
  /// The agent version details.
  final VersionDetailsResponse? agentVersionDetails;
  /// The available memory.
  final double? availableMemoryInBytes;
  /// The available space.
  final double? availableSpaceInBytes;
  /// The percentage of the CPU load.
  final String? cpuLoad;
  /// The CPU load status.
  final String? cpuLoadStatus;
  /// The CS service status.
  final String? csServiceStatus;
  /// The database server load.
  final String? databaseServerLoad;
  /// The database server load status.
  final String? databaseServerLoadStatus;
  /// The host name.
  final String? hostName;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'VMware'.
  final String instanceType;
  /// The IP address.
  final String? ipAddress;
  /// The last heartbeat received from CS server.
  final String? lastHeartbeat;
  /// The list of Master Target servers associated with the fabric.
  final List<MasterTargetServerResponse>? masterTargetServers;
  /// The memory usage status.
  final String? memoryUsageStatus;
  /// The number of process servers.
  final String? processServerCount;
  /// The list of Process Servers associated with the fabric.
  final List<ProcessServerResponse>? processServers;
  /// The number of protected servers.
  final String? protectedServers;
  /// PS template version.
  final String? psTemplateVersion;
  /// The number of replication pairs configured in this CS.
  final String? replicationPairCount;
  /// The list of run as accounts created on the server.
  final List<RunAsAccountResponse>? runAsAccounts;
  /// The space usage status.
  final String? spaceUsageStatus;
  /// CS SSL cert expiry date.
  final String? sslCertExpiryDate;
  /// CS SSL cert expiry date.
  final int? sslCertExpiryRemainingDays;
  /// The switch provider blocking error information.
  final List<InMageFabricSwitchProviderBlockingErrorDetailsResponse>? switchProviderBlockingErrorDetails;
  /// The percentage of the system load.
  final String? systemLoad;
  /// The system load status.
  final String? systemLoadStatus;
  /// The total memory.
  final double? totalMemoryInBytes;
  /// The total space.
  final double? totalSpaceInBytes;
  /// Version status.
  final String? versionStatus;
  /// The web load.
  final String? webLoad;
  /// The web load status.
  final String? webLoadStatus;

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
      'agentVersionDetails': ?agentVersionDetails == null ? null : agentVersionDetails!.toMap(),
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
      'masterTargetServers': ?masterTargetServers == null ? null : pulumi.Input.encodeList<MasterTargetServerResponse, Map<String, dynamic>>(masterTargetServers!, (value) => value.toMap()),
      'memoryUsageStatus': ?memoryUsageStatus,
      'processServerCount': ?processServerCount,
      'processServers': ?processServers == null ? null : pulumi.Input.encodeList<ProcessServerResponse, Map<String, dynamic>>(processServers!, (value) => value.toMap()),
      'protectedServers': ?protectedServers,
      'psTemplateVersion': ?psTemplateVersion,
      'replicationPairCount': ?replicationPairCount,
      'runAsAccounts': ?runAsAccounts == null ? null : pulumi.Input.encodeList<RunAsAccountResponse, Map<String, dynamic>>(runAsAccounts!, (value) => value.toMap()),
      'spaceUsageStatus': ?spaceUsageStatus,
      'sslCertExpiryDate': ?sslCertExpiryDate,
      'sslCertExpiryRemainingDays': ?sslCertExpiryRemainingDays,
      'switchProviderBlockingErrorDetails': ?switchProviderBlockingErrorDetails == null ? null : pulumi.Input.encodeList<InMageFabricSwitchProviderBlockingErrorDetailsResponse, Map<String, dynamic>>(switchProviderBlockingErrorDetails!, (value) => value.toMap()),
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
      agentCount: map['agentCount'] == null ? null : map['agentCount'] as String,
      agentExpiryDate: map['agentExpiryDate'] == null ? null : map['agentExpiryDate'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      agentVersionDetails: map['agentVersionDetails'] == null ? null : VersionDetailsResponse.fromMap((map['agentVersionDetails'] as Map).cast<String, dynamic>()),
      availableMemoryInBytes: map['availableMemoryInBytes'] == null ? null : map['availableMemoryInBytes'] as double,
      availableSpaceInBytes: map['availableSpaceInBytes'] == null ? null : map['availableSpaceInBytes'] as double,
      cpuLoad: map['cpuLoad'] == null ? null : map['cpuLoad'] as String,
      cpuLoadStatus: map['cpuLoadStatus'] == null ? null : map['cpuLoadStatus'] as String,
      csServiceStatus: map['csServiceStatus'] == null ? null : map['csServiceStatus'] as String,
      databaseServerLoad: map['databaseServerLoad'] == null ? null : map['databaseServerLoad'] as String,
      databaseServerLoadStatus: map['databaseServerLoadStatus'] == null ? null : map['databaseServerLoadStatus'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      instanceType: map['instanceType'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      lastHeartbeat: map['lastHeartbeat'] == null ? null : map['lastHeartbeat'] as String,
      masterTargetServers: map['masterTargetServers'] == null ? null : pulumi.Input.decodeList<MasterTargetServerResponse>(map['masterTargetServers'], (value) => MasterTargetServerResponse.fromMap((value as Map).cast<String, dynamic>())),
      memoryUsageStatus: map['memoryUsageStatus'] == null ? null : map['memoryUsageStatus'] as String,
      processServerCount: map['processServerCount'] == null ? null : map['processServerCount'] as String,
      processServers: map['processServers'] == null ? null : pulumi.Input.decodeList<ProcessServerResponse>(map['processServers'], (value) => ProcessServerResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectedServers: map['protectedServers'] == null ? null : map['protectedServers'] as String,
      psTemplateVersion: map['psTemplateVersion'] == null ? null : map['psTemplateVersion'] as String,
      replicationPairCount: map['replicationPairCount'] == null ? null : map['replicationPairCount'] as String,
      runAsAccounts: map['runAsAccounts'] == null ? null : pulumi.Input.decodeList<RunAsAccountResponse>(map['runAsAccounts'], (value) => RunAsAccountResponse.fromMap((value as Map).cast<String, dynamic>())),
      spaceUsageStatus: map['spaceUsageStatus'] == null ? null : map['spaceUsageStatus'] as String,
      sslCertExpiryDate: map['sslCertExpiryDate'] == null ? null : map['sslCertExpiryDate'] as String,
      sslCertExpiryRemainingDays: map['sslCertExpiryRemainingDays'] == null ? null : map['sslCertExpiryRemainingDays'] as int,
      switchProviderBlockingErrorDetails: map['switchProviderBlockingErrorDetails'] == null ? null : pulumi.Input.decodeList<InMageFabricSwitchProviderBlockingErrorDetailsResponse>(map['switchProviderBlockingErrorDetails'], (value) => InMageFabricSwitchProviderBlockingErrorDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemLoad: map['systemLoad'] == null ? null : map['systemLoad'] as String,
      systemLoadStatus: map['systemLoadStatus'] == null ? null : map['systemLoadStatus'] as String,
      totalMemoryInBytes: map['totalMemoryInBytes'] == null ? null : map['totalMemoryInBytes'] as double,
      totalSpaceInBytes: map['totalSpaceInBytes'] == null ? null : map['totalSpaceInBytes'] as double,
      versionStatus: map['versionStatus'] == null ? null : map['versionStatus'] as String,
      webLoad: map['webLoad'] == null ? null : map['webLoad'] as String,
      webLoadStatus: map['webLoadStatus'] == null ? null : map['webLoadStatus'] as String,
    );
  }
}

