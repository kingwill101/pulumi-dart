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
  final pulumi.Input<
    List<InMageFabricSwitchProviderBlockingErrorDetailsResponse>
  >?
  switchProviderBlockingErrorDetails;

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
      'agentVersionDetails':
          ?pulumi.Input.mapOptionalInputValue<
            VersionDetailsResponse,
            Map<String, dynamic>
          >(agentVersionDetails, (value) => value.toMap()),
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
      'masterTargetServers':
          ?pulumi.Input.mapOptionalInputValue<
            List<MasterTargetServerResponse>,
            List<Map<String, dynamic>>
          >(
            masterTargetServers,
            (value) =>
                pulumi.Input.encodeList<
                  MasterTargetServerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'memoryUsageStatus': ?memoryUsageStatus,
      'processServerCount': ?processServerCount,
      'processServers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProcessServerResponse>,
            List<Map<String, dynamic>>
          >(
            processServers,
            (value) =>
                pulumi.Input.encodeList<
                  ProcessServerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protectedServers': ?protectedServers,
      'psTemplateVersion': ?psTemplateVersion,
      'replicationPairCount': ?replicationPairCount,
      'runAsAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<RunAsAccountResponse>,
            List<Map<String, dynamic>>
          >(
            runAsAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  RunAsAccountResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'spaceUsageStatus': ?spaceUsageStatus,
      'sslCertExpiryDate': ?sslCertExpiryDate,
      'sslCertExpiryRemainingDays': ?sslCertExpiryRemainingDays,
      'switchProviderBlockingErrorDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<InMageFabricSwitchProviderBlockingErrorDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            switchProviderBlockingErrorDetails,
            (value) =>
                pulumi.Input.encodeList<
                  InMageFabricSwitchProviderBlockingErrorDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      agentCount: (() {
        final guardedValue = map['agentCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agentExpiryDate: (() {
        final guardedValue = map['agentExpiryDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agentVersion: (() {
        final guardedValue = map['agentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      agentVersionDetails: (() {
        final guardedValue = map['agentVersionDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VersionDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      availableMemoryInBytes: (() {
        final guardedValue = map['availableMemoryInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      availableSpaceInBytes: (() {
        final guardedValue = map['availableSpaceInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      cpuLoad: (() {
        final guardedValue = map['cpuLoad'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuLoadStatus: (() {
        final guardedValue = map['cpuLoadStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      csServiceStatus: (() {
        final guardedValue = map['csServiceStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseServerLoad: (() {
        final guardedValue = map['databaseServerLoad'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseServerLoadStatus: (() {
        final guardedValue = map['databaseServerLoadStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastHeartbeat: (() {
        final guardedValue = map['lastHeartbeat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterTargetServers: (() {
        final guardedValue = map['masterTargetServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MasterTargetServerResponse>(
            guardedValue,
            (value) => MasterTargetServerResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      memoryUsageStatus: (() {
        final guardedValue = map['memoryUsageStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processServerCount: (() {
        final guardedValue = map['processServerCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      processServers: (() {
        final guardedValue = map['processServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProcessServerResponse>(
            guardedValue,
            (value) => ProcessServerResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      protectedServers: (() {
        final guardedValue = map['protectedServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      psTemplateVersion: (() {
        final guardedValue = map['psTemplateVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationPairCount: (() {
        final guardedValue = map['replicationPairCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runAsAccounts: (() {
        final guardedValue = map['runAsAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RunAsAccountResponse>(
            guardedValue,
            (value) => RunAsAccountResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      spaceUsageStatus: (() {
        final guardedValue = map['spaceUsageStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCertExpiryDate: (() {
        final guardedValue = map['sslCertExpiryDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCertExpiryRemainingDays: (() {
        final guardedValue = map['sslCertExpiryRemainingDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      switchProviderBlockingErrorDetails: (() {
        final guardedValue = map['switchProviderBlockingErrorDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InMageFabricSwitchProviderBlockingErrorDetailsResponse
          >(
            guardedValue,
            (value) =>
                InMageFabricSwitchProviderBlockingErrorDetailsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      systemLoad: (() {
        final guardedValue = map['systemLoad'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemLoadStatus: (() {
        final guardedValue = map['systemLoadStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      totalMemoryInBytes: (() {
        final guardedValue = map['totalMemoryInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalSpaceInBytes: (() {
        final guardedValue = map['totalSpaceInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      versionStatus: (() {
        final guardedValue = map['versionStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webLoad: (() {
        final guardedValue = map['webLoad'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webLoadStatus: (() {
        final guardedValue = map['webLoadStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
