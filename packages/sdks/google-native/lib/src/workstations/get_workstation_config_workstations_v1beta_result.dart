// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response_workstations_v1beta.dart';
import 'customer_encryption_key_response_workstations_v1beta.dart';
import 'ephemeral_directory_response.dart';
import 'host_response_workstations_v1beta.dart';
import 'persistent_directory_response_workstations_v1beta.dart';
import 'readiness_check_response_workstations_v1beta.dart';
import 'status_response_workstations_v1beta.dart';

/// Result data returned by getWorkstationConfig.
class GetWorkstationConfigWorkstationsV1betaResult {
  /// Optional. Client-specified annotations.
  final Map<String, String> annotations;
  /// Status conditions describing the current resource state.
  final List<StatusResponseWorkstationsV1beta> conditions;
  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  final ContainerResponseWorkstationsV1beta container;
  /// Time when this workstation configuration was created.
  final String createTime;
  /// Whether this resource is degraded, in which case it may require user action to restore full functionality. See also the conditions field.
  final bool degraded;
  /// Time when this workstation configuration was soft-deleted.
  final String deleteTime;
  /// Optional. Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  final bool disableTcpConnections;
  /// Optional. Human-readable name for this workstation configuration.
  final String displayName;
  /// Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  final bool enableAuditAgent;
  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  final CustomerEncryptionKeyResponseWorkstationsV1beta encryptionKey;
  /// Optional. Ephemeral directories which won't persist across workstation sessions.
  final List<EphemeralDirectoryResponse> ephemeralDirectories;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String etag;
  /// Optional. Runtime host for the workstation.
  final HostResponseWorkstationsV1beta host;
  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  final String idleTimeout;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String> labels;
  /// Identifier. Full name of this workstation configuration.
  final String name;
  /// Optional. Directories to persist across workstation sessions.
  final List<PersistentDirectoryResponseWorkstationsV1beta> persistentDirectories;
  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  final List<ReadinessCheckResponseWorkstationsV1beta> readinessChecks;
  /// Indicates whether this workstation configuration is currently being updated to match its intended state.
  final bool reconciling;
  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final List<String> replicaZones;
  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  final String runningTimeout;
  /// A system-assigned unique identifier for this workstation configuration.
  final String uid;
  /// Time when this workstation configuration was most recently updated.
  final String updateTime;

  /// Creates a new [GetWorkstationConfigWorkstationsV1betaResult].
  /// [annotations] Optional. Client-specified annotations.
  /// [conditions] Status conditions describing the current resource state.
  /// [container] Optional. Container that runs upon startup for each workstation using this workstation configuration.
  /// [createTime] Time when this workstation configuration was created.
  /// [degraded] Whether this resource is degraded, in which case it may require user action to restore full functionality. See also the conditions field.
  /// [deleteTime] Time when this workstation configuration was soft-deleted.
  /// [disableTcpConnections] Optional. Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  /// [displayName] Optional. Human-readable name for this workstation configuration.
  /// [enableAuditAgent] Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  /// [encryptionKey] Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  /// [ephemeralDirectories] Optional. Ephemeral directories which won't persist across workstation sessions.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [host] Optional. Runtime host for the workstation.
  /// [idleTimeout] Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  /// [name] Identifier. Full name of this workstation configuration.
  /// [persistentDirectories] Optional. Directories to persist across workstation sessions.
  /// [readinessChecks] Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  /// [reconciling] Indicates whether this workstation configuration is currently being updated to match its intended state.
  /// [replicaZones] Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  /// [runningTimeout] Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  /// [uid] A system-assigned unique identifier for this workstation configuration.
  /// [updateTime] Time when this workstation configuration was most recently updated.
  const GetWorkstationConfigWorkstationsV1betaResult({
    required this.annotations,
    required this.conditions,
    required this.container,
    required this.createTime,
    required this.degraded,
    required this.deleteTime,
    required this.disableTcpConnections,
    required this.displayName,
    required this.enableAuditAgent,
    required this.encryptionKey,
    required this.ephemeralDirectories,
    required this.etag,
    required this.host,
    required this.idleTimeout,
    required this.labels,
    required this.name,
    required this.persistentDirectories,
    required this.readinessChecks,
    required this.reconciling,
    required this.replicaZones,
    required this.runningTimeout,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'conditions': pulumi.Input.encodeList<StatusResponseWorkstationsV1beta, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'container': container.toMap(),
      'createTime': createTime,
      'degraded': degraded,
      'deleteTime': deleteTime,
      'disableTcpConnections': disableTcpConnections,
      'displayName': displayName,
      'enableAuditAgent': enableAuditAgent,
      'encryptionKey': encryptionKey.toMap(),
      'ephemeralDirectories': pulumi.Input.encodeList<EphemeralDirectoryResponse, Map<String, dynamic>>(ephemeralDirectories, (value) => value.toMap()),
      'etag': etag,
      'host': host.toMap(),
      'idleTimeout': idleTimeout,
      'labels': labels,
      'name': name,
      'persistentDirectories': pulumi.Input.encodeList<PersistentDirectoryResponseWorkstationsV1beta, Map<String, dynamic>>(persistentDirectories, (value) => value.toMap()),
      'readinessChecks': pulumi.Input.encodeList<ReadinessCheckResponseWorkstationsV1beta, Map<String, dynamic>>(readinessChecks, (value) => value.toMap()),
      'reconciling': reconciling,
      'replicaZones': replicaZones,
      'runningTimeout': runningTimeout,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetWorkstationConfigWorkstationsV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigWorkstationsV1betaResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      conditions: pulumi.Input.decodeList<StatusResponseWorkstationsV1beta>(map['conditions']!, (value) => StatusResponseWorkstationsV1beta.fromMap((value as Map).cast<String, dynamic>())),
      container: ContainerResponseWorkstationsV1beta.fromMap((map['container']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      degraded: map['degraded'] as bool,
      deleteTime: map['deleteTime'] as String,
      disableTcpConnections: map['disableTcpConnections'] as bool,
      displayName: map['displayName'] as String,
      enableAuditAgent: map['enableAuditAgent'] as bool,
      encryptionKey: CustomerEncryptionKeyResponseWorkstationsV1beta.fromMap((map['encryptionKey']! as Map).cast<String, dynamic>()),
      ephemeralDirectories: pulumi.Input.decodeList<EphemeralDirectoryResponse>(map['ephemeralDirectories']!, (value) => EphemeralDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      host: HostResponseWorkstationsV1beta.fromMap((map['host']! as Map).cast<String, dynamic>()),
      idleTimeout: map['idleTimeout'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      persistentDirectories: pulumi.Input.decodeList<PersistentDirectoryResponseWorkstationsV1beta>(map['persistentDirectories']!, (value) => PersistentDirectoryResponseWorkstationsV1beta.fromMap((value as Map).cast<String, dynamic>())),
      readinessChecks: pulumi.Input.decodeList<ReadinessCheckResponseWorkstationsV1beta>(map['readinessChecks']!, (value) => ReadinessCheckResponseWorkstationsV1beta.fromMap((value as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] as bool,
      replicaZones: (map['replicaZones'] as List).cast<String>(),
      runningTimeout: map['runningTimeout'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
