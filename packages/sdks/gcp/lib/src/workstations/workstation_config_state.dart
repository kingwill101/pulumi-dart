// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_allowed_port.dart';
import 'workstation_config_condition.dart';
import 'workstation_config_container.dart';
import 'workstation_config_encryption_key.dart';
import 'workstation_config_ephemeral_directory.dart';
import 'workstation_config_host.dart';
import 'workstation_config_persistent_directory.dart';
import 'workstation_config_readiness_check.dart';

/// Input properties used for looking up and filtering WorkstationConfig resources.
class WorkstationConfigState {
  /// A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigAllowedPort>>? allowedPorts;
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigCondition>>? conditions;
  /// Container that will be run for each workstation using this configuration when that workstation is started.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigContainer>? container;
  /// Time when this resource was created.
  final pulumi.Input<String>? createTime;
  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in the conditions field.
  final pulumi.Input<bool>? degraded;
  /// Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  final pulumi.Input<bool>? disableTcpConnections;
  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Runtime host for a workstation.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigHost>? host;
  /// How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? idleTimeout;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the workstation cluster config should reside.
  final pulumi.Input<String>? location;
  /// Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  final pulumi.Input<int>? maxUsableWorkstations;
  /// Full name of this resource.
  final pulumi.Input<String>? name;
  /// Directories to persist across workstation sessions.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigPersistentDirectory>>? persistentDirectories;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Readiness checks to be performed on a workstation.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigReadinessCheck>>? readinessChecks;
  /// Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final pulumi.Input<List<String>>? replicaZones;
  /// How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryption_key` is set. Defaults to 12 hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? runningTimeout;
  /// The system-generated UID of the resource.
  final pulumi.Input<String>? uid;
  /// The ID of the parent workstation cluster.
  final pulumi.Input<String>? workstationClusterId;
  /// The ID to be assigned to the workstation cluster config.
  final pulumi.Input<String>? workstationConfigId;

  /// Creates a new [WorkstationConfigState].
  /// [allowedPorts] A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [conditions] Status conditions describing the current resource state.
  /// [container] Container that will be run for each workstation using this configuration when that workstation is started.
  /// [createTime] Time when this resource was created.
  /// [degraded] Whether this resource is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in the conditions field.
  /// [disableTcpConnections] Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  /// [displayName] Human-readable name for this resource.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableAuditAgent] Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from Cloud Audit Logs.
  /// [encryptionKey] Encrypts resources of this workstation configuration using a customer-managed encryption key.
  /// [ephemeralDirectories] Ephemeral directories which won't persist across workstation sessions.
  /// [etag] Checksum computed by the server.
  /// [host] Runtime host for a workstation.
  /// [idleTimeout] How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation cluster config should reside.
  /// [maxUsableWorkstations] Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  /// [name] Full name of this resource.
  /// [persistentDirectories] Directories to persist across workstation sessions.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [readinessChecks] Readiness checks to be performed on a workstation.
  /// [replicaZones] Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// [runningTimeout] How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryption_key` is set. Defaults to 12 hours.
  /// [uid] The system-generated UID of the resource.
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] The ID to be assigned to the workstation cluster config.
  WorkstationConfigState({
    pulumi.Output<List<WorkstationConfigAllowedPort>>? allowedPorts,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<List<WorkstationConfigCondition>>? conditions,
    pulumi.Output<WorkstationConfigContainer>? container,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? degraded,
    pulumi.Output<bool>? disableTcpConnections,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableAuditAgent,
    pulumi.Output<WorkstationConfigEncryptionKey>? encryptionKey,
    pulumi.Output<List<WorkstationConfigEphemeralDirectory>>? ephemeralDirectories,
    pulumi.Output<String>? etag,
    pulumi.Output<WorkstationConfigHost>? host,
    pulumi.Output<String>? idleTimeout,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maxUsableWorkstations,
    pulumi.Output<String>? name,
    pulumi.Output<List<WorkstationConfigPersistentDirectory>>? persistentDirectories,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<WorkstationConfigReadinessCheck>>? readinessChecks,
    pulumi.Output<List<String>>? replicaZones,
    pulumi.Output<String>? runningTimeout,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? workstationClusterId,
    pulumi.Output<String>? workstationConfigId,
  }) :
      allowedPorts = pulumi.Input.asOptionalInput<List<WorkstationConfigAllowedPort>>(allowedPorts),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      conditions = pulumi.Input.asOptionalInput<List<WorkstationConfigCondition>>(conditions),
      container = pulumi.Input.asOptionalInput<WorkstationConfigContainer>(container),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      degraded = pulumi.Input.asOptionalInput<bool>(degraded),
      disableTcpConnections = pulumi.Input.asOptionalInput<bool>(disableTcpConnections),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableAuditAgent = pulumi.Input.asOptionalInput<bool>(enableAuditAgent),
      encryptionKey = pulumi.Input.asOptionalInput<WorkstationConfigEncryptionKey>(encryptionKey),
      ephemeralDirectories = pulumi.Input.asOptionalInput<List<WorkstationConfigEphemeralDirectory>>(ephemeralDirectories),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      host = pulumi.Input.asOptionalInput<WorkstationConfigHost>(host),
      idleTimeout = pulumi.Input.asOptionalInput<String>(idleTimeout),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxUsableWorkstations = pulumi.Input.asOptionalInput<int>(maxUsableWorkstations),
      name = pulumi.Input.asOptionalInput<String>(name),
      persistentDirectories = pulumi.Input.asOptionalInput<List<WorkstationConfigPersistentDirectory>>(persistentDirectories),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      readinessChecks = pulumi.Input.asOptionalInput<List<WorkstationConfigReadinessCheck>>(readinessChecks),
      replicaZones = pulumi.Input.asOptionalInput<List<String>>(replicaZones),
      runningTimeout = pulumi.Input.asOptionalInput<String>(runningTimeout),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      workstationClusterId = pulumi.Input.asOptionalInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asOptionalInput<String>(workstationConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigAllowedPort>, List<Map<String, dynamic>>>(allowedPorts, (value) => pulumi.Input.encodeList<WorkstationConfigAllowedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'annotations': ?annotations,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<WorkstationConfigCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'container': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
      'createTime': ?createTime,
      'degraded': ?degraded,
      'disableTcpConnections': ?disableTcpConnections,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'enableAuditAgent': ?enableAuditAgent,
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigEncryptionKey, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'ephemeralDirectories': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigEphemeralDirectory>, List<Map<String, dynamic>>>(ephemeralDirectories, (value) => pulumi.Input.encodeList<WorkstationConfigEphemeralDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'host': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigHost, Map<String, dynamic>>(host, (value) => value.toMap()),
      'idleTimeout': ?idleTimeout,
      'labels': ?labels,
      'location': ?location,
      'maxUsableWorkstations': ?maxUsableWorkstations,
      'name': ?name,
      'persistentDirectories': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigPersistentDirectory>, List<Map<String, dynamic>>>(persistentDirectories, (value) => pulumi.Input.encodeList<WorkstationConfigPersistentDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'readinessChecks': ?pulumi.Input.mapOptionalInputValue<List<WorkstationConfigReadinessCheck>, List<Map<String, dynamic>>>(readinessChecks, (value) => pulumi.Input.encodeList<WorkstationConfigReadinessCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicaZones': ?replicaZones,
      'runningTimeout': ?runningTimeout,
      'uid': ?uid,
      'workstationClusterId': ?workstationClusterId,
      'workstationConfigId': ?workstationConfigId,
    };
  }

  factory WorkstationConfigState.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigState(
      allowedPorts: map['allowedPorts'] == null ? null : pulumi.Output.create<List<WorkstationConfigAllowedPort>>(pulumi.Input.decodeList<WorkstationConfigAllowedPort>(map['allowedPorts'], (value) => WorkstationConfigAllowedPort.fromMap((value as Map).cast<String, dynamic>()))),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<WorkstationConfigCondition>>(pulumi.Input.decodeList<WorkstationConfigCondition>(map['conditions'], (value) => WorkstationConfigCondition.fromMap((value as Map).cast<String, dynamic>()))),
      container: map['container'] == null ? null : pulumi.Output.create<WorkstationConfigContainer>(WorkstationConfigContainer.fromMap((map['container'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      degraded: map['degraded'] == null ? null : pulumi.Output.create<bool>(map['degraded'] as bool),
      disableTcpConnections: map['disableTcpConnections'] == null ? null : pulumi.Output.create<bool>(map['disableTcpConnections'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableAuditAgent: map['enableAuditAgent'] == null ? null : pulumi.Output.create<bool>(map['enableAuditAgent'] as bool),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<WorkstationConfigEncryptionKey>(WorkstationConfigEncryptionKey.fromMap((map['encryptionKey'] as Map).cast<String, dynamic>())),
      ephemeralDirectories: map['ephemeralDirectories'] == null ? null : pulumi.Output.create<List<WorkstationConfigEphemeralDirectory>>(pulumi.Input.decodeList<WorkstationConfigEphemeralDirectory>(map['ephemeralDirectories'], (value) => WorkstationConfigEphemeralDirectory.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<WorkstationConfigHost>(WorkstationConfigHost.fromMap((map['host'] as Map).cast<String, dynamic>())),
      idleTimeout: map['idleTimeout'] == null ? null : pulumi.Output.create<String>(map['idleTimeout'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxUsableWorkstations: map['maxUsableWorkstations'] == null ? null : pulumi.Output.create<int>(map['maxUsableWorkstations'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      persistentDirectories: map['persistentDirectories'] == null ? null : pulumi.Output.create<List<WorkstationConfigPersistentDirectory>>(pulumi.Input.decodeList<WorkstationConfigPersistentDirectory>(map['persistentDirectories'], (value) => WorkstationConfigPersistentDirectory.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      readinessChecks: map['readinessChecks'] == null ? null : pulumi.Output.create<List<WorkstationConfigReadinessCheck>>(pulumi.Input.decodeList<WorkstationConfigReadinessCheck>(map['readinessChecks'], (value) => WorkstationConfigReadinessCheck.fromMap((value as Map).cast<String, dynamic>()))),
      replicaZones: map['replicaZones'] == null ? null : pulumi.Output.create<List<String>>((map['replicaZones'] as List).cast<String>()),
      runningTimeout: map['runningTimeout'] == null ? null : pulumi.Output.create<String>(map['runningTimeout'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      workstationClusterId: map['workstationClusterId'] == null ? null : pulumi.Output.create<String>(map['workstationClusterId'] as String),
      workstationConfigId: map['workstationConfigId'] == null ? null : pulumi.Output.create<String>(map['workstationConfigId'] as String),
    );
  }
}

