// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_allowed_port.dart';
import 'workstation_config_container.dart';
import 'workstation_config_encryption_key.dart';
import 'workstation_config_ephemeral_directory.dart';
import 'workstation_config_host.dart';
import 'workstation_config_persistent_directory.dart';
import 'workstation_config_readiness_check.dart';

/// {@template pulumi_workstations_workstation_config_workstation_config_args_doc}
/// The set of arguments for WorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_workstation_config_workstation_config_args_doc}
class WorkstationConfigArgs {
  /// A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigAllowedPort>>? allowedPorts;
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Container that will be run for each workstation using this configuration when that workstation is started.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigContainer>? container;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  final pulumi.Input<bool>? disableTcpConnections;
  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;
  /// Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from Cloud Audit Logs.
  final pulumi.Input<bool>? enableAuditAgent;
  /// Encrypts resources of this workstation configuration using a customer-managed encryption key.
  /// If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.
  /// If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.
  /// If the encryption key is revoked, the workstation session will automatically be stopped within 7 hours.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigEncryptionKey>? encryptionKey;
  /// Ephemeral directories which won't persist across workstation sessions.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigEphemeralDirectory>>? ephemeralDirectories;
  /// Runtime host for a workstation.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigHost>? host;
  /// (Optional, Beta)
  /// The action to take when the workstation has been idle for the duration specified in idle_timeout.
  /// Defaults to STOP.
  /// Default value is `STOP`.
  /// Possible values are: `STOP`, `SUSPEND`.
  final pulumi.Input<String>? idleAction;
  /// How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? idleTimeout;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the workstation cluster config should reside.
  final pulumi.Input<String> location;
  /// Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  final pulumi.Input<int>? maxUsableWorkstations;
  /// Directories to persist across workstation sessions.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigPersistentDirectory>>? persistentDirectories;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Readiness checks to be performed on a workstation.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigReadinessCheck>>? readinessChecks;
  /// Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final pulumi.Input<List<String>>? replicaZones;
  /// How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryptionKey` is set. Defaults to 12 hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? runningTimeout;
  /// The ID of the parent workstation cluster.
  final pulumi.Input<String> workstationClusterId;
  /// The ID to be assigned to the workstation cluster config.
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [WorkstationConfigArgs].
  /// [allowedPorts] A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [container] Container that will be run for each workstation using this configuration when that workstation is started.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disableTcpConnections] Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  /// [displayName] Human-readable name for this resource.
  /// [enableAuditAgent] Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from Cloud Audit Logs.
  /// [encryptionKey] Encrypts resources of this workstation configuration using a customer-managed encryption key.
  /// [ephemeralDirectories] Ephemeral directories which won't persist across workstation sessions.
  /// [host] Runtime host for a workstation.
  /// [idleAction] (Optional, Beta)
  /// [idleTimeout] How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation cluster config should reside.
  /// [maxUsableWorkstations] Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  /// [persistentDirectories] Directories to persist across workstation sessions.
  /// [project] The ID of the project in which the resource belongs.
  /// [readinessChecks] Readiness checks to be performed on a workstation.
  /// [replicaZones] Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// [runningTimeout] How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryptionKey` is set. Defaults to 12 hours.
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] The ID to be assigned to the workstation cluster config.
  const WorkstationConfigArgs({
    this.allowedPorts,
    this.annotations,
    this.container,
    this.deletionPolicy,
    this.disableTcpConnections,
    this.displayName,
    this.enableAuditAgent,
    this.encryptionKey,
    this.ephemeralDirectories,
    this.host,
    this.idleAction,
    this.idleTimeout,
    this.labels,
    required this.location,
    this.maxUsableWorkstations,
    this.persistentDirectories,
    this.project,
    this.readinessChecks,
    this.replicaZones,
    this.runningTimeout,
    required this.workstationClusterId,
    required this.workstationConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigAllowedPort>, List<Map<String, dynamic>>>(allowedPorts, (value) => pulumi.Input.encodeList<WorkstationConfigAllowedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'annotations': ?annotations,
      'container': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'disableTcpConnections': ?disableTcpConnections,
      'displayName': ?displayName,
      'enableAuditAgent': ?enableAuditAgent,
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigEncryptionKey, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'ephemeralDirectories': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigEphemeralDirectory>, List<Map<String, dynamic>>>(ephemeralDirectories, (value) => pulumi.Input.encodeList<WorkstationConfigEphemeralDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'host': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'idleAction': ?idleAction,
      'idleTimeout': ?idleTimeout,
      'labels': ?labels,
      'location': location,
      'maxUsableWorkstations': ?maxUsableWorkstations,
      'persistentDirectories': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigPersistentDirectory>, List<Map<String, dynamic>>>(persistentDirectories, (value) => pulumi.Input.encodeList<WorkstationConfigPersistentDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'readinessChecks': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigReadinessCheck>, List<Map<String, dynamic>>>(readinessChecks, (value) => pulumi.Input.encodeList<WorkstationConfigReadinessCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaZones': ?replicaZones,
      'runningTimeout': ?runningTimeout,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory WorkstationConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigArgs(
      allowedPorts: (() { final guardedValue = map['allowedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationConfigAllowedPort>(guardedValue, (value) => WorkstationConfigAllowedPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationConfigContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTcpConnections: (() { final guardedValue = map['disableTcpConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAuditAgent: (() { final guardedValue = map['enableAuditAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationConfigEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralDirectories: (() { final guardedValue = map['ephemeralDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationConfigEphemeralDirectory>(guardedValue, (value) => WorkstationConfigEphemeralDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationConfigHost.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idleAction: (() { final guardedValue = map['idleAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maxUsableWorkstations: (() { final guardedValue = map['maxUsableWorkstations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      persistentDirectories: (() { final guardedValue = map['persistentDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationConfigPersistentDirectory>(guardedValue, (value) => WorkstationConfigPersistentDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readinessChecks: (() { final guardedValue = map['readinessChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationConfigReadinessCheck>(guardedValue, (value) => WorkstationConfigReadinessCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
      replicaZones: (() { final guardedValue = map['replicaZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      runningTimeout: (() { final guardedValue = map['runningTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationClusterId: pulumi.Input.fromValue(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Input.fromValue(map['workstationConfigId'] as String),
    );
  }
}
