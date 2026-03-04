import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response_workstations_v1beta.dart';
import 'customer_encryption_key_response_workstations_v1beta.dart';
import 'host_response_workstations_v1beta.dart';
import 'workstation_config_workstations_v1beta_args.dart';

/// Creates a new workstation configuration.
class WorkstationConfigWorkstationsV1beta extends pulumi.CustomResource {
  /// Optional. Client-specified annotations.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Status conditions describing the current resource state.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  late final pulumi.Output<ContainerResponseWorkstationsV1beta> container;

  /// Time when this workstation configuration was created.
  late final pulumi.Output<String> createTime;

  /// Whether this resource is degraded, in which case it may require user action to restore full functionality. See also the conditions field.
  late final pulumi.Output<bool> degraded;

  /// Time when this workstation configuration was soft-deleted.
  late final pulumi.Output<String> deleteTime;

  /// Optional. Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  late final pulumi.Output<bool> disableTcpConnections;

  /// Optional. Human-readable name for this workstation configuration.
  late final pulumi.Output<String> displayName;

  /// Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  late final pulumi.Output<bool> enableAuditAgent;

  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  late final pulumi.Output<CustomerEncryptionKeyResponseWorkstationsV1beta>
  encryptionKey;

  /// Optional. Ephemeral directories which won't persist across workstation sessions.
  late final pulumi.Output<List<Map<String, dynamic>>> ephemeralDirectories;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. Runtime host for the workstation.
  late final pulumi.Output<HostResponseWorkstationsV1beta> host;

  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  late final pulumi.Output<String> idleTimeout;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Identifier. Full name of this workstation configuration.
  late final pulumi.Output<String> name;

  /// Optional. Directories to persist across workstation sessions.
  late final pulumi.Output<List<Map<String, dynamic>>> persistentDirectories;
  late final pulumi.Output<String> project;

  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  late final pulumi.Output<List<Map<String, dynamic>>> readinessChecks;

  /// Indicates whether this workstation configuration is currently being updated to match its intended state.
  late final pulumi.Output<bool> reconciling;

  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  late final pulumi.Output<List<String>> replicaZones;

  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  late final pulumi.Output<String> runningTimeout;

  /// A system-assigned unique identifier for this workstation configuration.
  late final pulumi.Output<String> uid;

  /// Time when this workstation configuration was most recently updated.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> workstationClusterId;

  /// Required. ID to use for the workstation configuration.
  late final pulumi.Output<String> workstationConfigId;

  /// Creates a new [WorkstationConfigWorkstationsV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkstationConfigWorkstationsV1beta]. {@macro pulumi_workstations_v1beta_workstation_config_workstations_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkstationConfigWorkstationsV1beta(
    String name, {
    WorkstationConfigWorkstationsV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:workstations/v1beta:WorkstationConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    container = registerOutput<ContainerResponseWorkstationsV1beta>(
      'container',
    );
    createTime = registerOutput<String>('createTime');
    degraded = registerOutput<bool>('degraded');
    deleteTime = registerOutput<String>('deleteTime');
    disableTcpConnections = registerOutput<bool>('disableTcpConnections');
    displayName = registerOutput<String>('displayName');
    enableAuditAgent = registerOutput<bool>('enableAuditAgent');
    encryptionKey =
        registerOutput<CustomerEncryptionKeyResponseWorkstationsV1beta>(
          'encryptionKey',
        );
    ephemeralDirectories = registerOutput<List<Map<String, dynamic>>>(
      'ephemeralDirectories',
    );
    etag = registerOutput<String>('etag');
    host = registerOutput<HostResponseWorkstationsV1beta>('host');
    idleTimeout = registerOutput<String>('idleTimeout');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    persistentDirectories = registerOutput<List<Map<String, dynamic>>>(
      'persistentDirectories',
    );
    project = registerOutput<String>('project');
    readinessChecks = registerOutput<List<Map<String, dynamic>>>(
      'readinessChecks',
    );
    reconciling = registerOutput<bool>('reconciling');
    replicaZones = registerOutput<List<String>>('replicaZones');
    runningTimeout = registerOutput<String>('runningTimeout');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    workstationClusterId = registerOutput<String>('workstationClusterId');
    workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}
