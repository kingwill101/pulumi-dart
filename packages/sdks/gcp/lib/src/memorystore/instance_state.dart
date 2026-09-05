// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_automated_backup_config.dart';
import 'instance_cross_instance_replication_config.dart';
import 'instance_desired_auto_created_endpoint.dart';
import 'instance_desired_psc_auto_connection.dart';
import 'instance_discovery_endpoint.dart';
import 'instance_endpoint.dart';
import 'instance_gcs_source.dart';
import 'instance_maintenance_policy.dart';
import 'instance_maintenance_schedule.dart';
import 'instance_managed_backup_source.dart';
import 'instance_managed_server_ca.dart';
import 'instance_node_config.dart';
import 'instance_persistence_config.dart';
import 'instance_psc_attachment_detail.dart';
import 'instance_psc_auto_connection.dart';
import 'instance_state_info.dart';
import 'instance_zone_distribution_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The name of the ACL policy to attach to the instance.
  /// Format: projects/{project}/locations/{location}/aclPolicies/{acl_policy}
  final pulumi.Input<String?>? aclPolicy;
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH.
  /// TOKEN_AUTH is also supported, but only available in the google-beta provider.
  final pulumi.Input<String?>? authorizationMode;
  /// The automated backup config for a instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutomatedBackupConfig?>? automatedBackupConfig;
  /// This field is used to determine the available maintenance versions for the self service update.
  final pulumi.Input<List<String>?>? availableMaintenanceVersions;
  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  final pulumi.Input<String?>? backupCollection;
  /// Output only. Creation timestamp of the instance.
  final pulumi.Input<String?>? createTime;
  /// Cross instance replication config
  /// Structure is documented below.
  final pulumi.Input<InstanceCrossInstanceReplicationConfig?>? crossInstanceReplicationConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. If set to true deletion of the instance will fail.
  final pulumi.Input<bool?>? deletionProtectionEnabled;
  /// Immutable. User inputs for the auto-created endpoints connections.
  final pulumi.Input<List<InstanceDesiredAutoCreatedEndpoint>?>? desiredAutoCreatedEndpoints;
  /// `desiredPscAutoConnections` is deprecated  Use `desiredAutoCreatedEndpoints` instead `pulumi import` will only work with desiredAutoCreatedEndpoints`.
  final pulumi.Input<List<InstanceDesiredPscAutoConnection>?>? desiredPscAutoConnections;
  /// (Deprecated)
  /// Deprecated. Output only. Endpoints clients can connect to the instance through.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceDiscoveryEndpoint>?>? discoveryEndpoints;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// This field represents the actual maintenance version of the cluster.
  final pulumi.Input<String?>? effectiveMaintenanceVersion;
  /// Endpoints for the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceEndpoint>?>? endpoints;
  /// Optional. User-provided engine configurations for the instance.
  final pulumi.Input<Map<String, String>?>? engineConfigs;
  /// Optional. Engine version of the instance.
  final pulumi.Input<String?>? engineVersion;
  /// GCS source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceGcsSource?>? gcsSource;
  /// Required. The ID to use for the instance, which will become the final component of
  /// the instance's resource name.
  /// This value is subject to the following restrictions:
  /// * Must be 4-63 characters in length
  /// * Must begin with a letter or digit
  /// * Must contain only lowercase letters, digits, and hyphens
  /// * Must not end with a hyphen
  /// * Must be unique within a location
  final pulumi.Input<String?>? instanceId;
  /// Whether the ACL policy is in sync with the cluster.
  final pulumi.Input<bool?>? isAclPolicyInSync;
  /// The KMS key used to encrypt the at-rest data of the cluster
  final pulumi.Input<String?>? kmsKey;
  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  final pulumi.Input<String?>? location;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy?>? maintenancePolicy;
  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceMaintenanceSchedule>?>? maintenanceSchedules;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String?>? maintenanceVersion;
  /// Managed backup source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceManagedBackupSource?>? managedBackupSource;
  /// Instance's Certificate Authority. This field will only be populated if instance's transitEncryptionMode is SERVER_AUTHENTICATION
  /// Structure is documented below.
  final pulumi.Input<List<InstanceManagedServerCa>?>? managedServerCas;
  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  final pulumi.Input<String?>? mode;
  /// Identifier. Unique name of the instance.
  /// Format: projects/{project}/locations/{location}/instances/{instance}
  final pulumi.Input<String?>? name;
  /// Represents configuration for nodes of the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceNodeConfig>?>? nodeConfigs;
  /// Optional. Machine type for individual nodes of the instance.
  /// Possible values:
  /// SHARED_CORE_NANO
  /// CUSTOM_PICO
  /// CUSTOM_MICRO
  /// CUSTOM_MINI
  /// HIGHMEM_MEDIUM
  /// HIGHCPU_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  /// STANDARD_LARGE
  /// HIGHMEM_2XLARGE
  final pulumi.Input<String?>? nodeType;
  /// Represents persistence configuration for a instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfig?>? persistenceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Configuration of a service attachment of the cluster, for creating PSC connections.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscAttachmentDetail>?>? pscAttachmentDetails;
  /// (Deprecated)
  /// Output only. User inputs and resource details of the auto-created PSC connections.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscAutoConnection>?>? pscAutoConnections;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  final pulumi.Input<int?>? replicaCount;
  /// The serverCaMode for the TLS enabled Memorystore instance.
  /// If not provided, GOOGLE_MANAGED_PER_INSTANCE_CA will be used as default
  /// Possible values are: `GOOGLE_MANAGED_PER_INSTANCE_CA`, `GOOGLE_MANAGED_SHARED_CA`, `CUSTOMER_MANAGED_CAS_CA`, `SERVER_CA_MODE_UNSPECIFIED`.
  final pulumi.Input<String?>? serverCaMode;
  /// The resource name of the server CA pool for an instance with CUSTOMER_MANAGED_CAS_CA
  /// as the server_ca_mode.
  /// Format: projects/{project}/locations/{region}/caPools/{caPoolId}
  final pulumi.Input<String?>? serverCaPool;
  /// Required. Number of shards for the instance.
  final pulumi.Input<int?>? shardCount;
  /// Output only. Current state of the instance.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  final pulumi.Input<String?>? state;
  /// Additional information about the state of the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceStateInfo>?>? stateInfos;
  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  final pulumi.Input<String?>? transitEncryptionMode;
  /// Output only. System assigned, unique identifier for the instance.
  final pulumi.Input<String?>? uid;
  /// Output only. Latest update timestamp of the instance.
  final pulumi.Input<String?>? updateTime;
  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  final pulumi.Input<InstanceZoneDistributionConfig?>? zoneDistributionConfig;

  /// Creates a new [InstanceState].
  /// [aclPolicy] The name of the ACL policy to attach to the instance.
  /// [authorizationMode] Optional. Immutable. Authorization mode of the instance. Possible values:
  /// [automatedBackupConfig] The automated backup config for a instance.
  /// [availableMaintenanceVersions] This field is used to determine the available maintenance versions for the self service update.
  /// [backupCollection] The backup collection full resource name.
  /// [createTime] Output only. Creation timestamp of the instance.
  /// [crossInstanceReplicationConfig] Cross instance replication config
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtectionEnabled] Optional. If set to true deletion of the instance will fail.
  /// [desiredAutoCreatedEndpoints] Immutable. User inputs for the auto-created endpoints connections.
  /// [desiredPscAutoConnections] `desiredPscAutoConnections` is deprecated  Use `desiredAutoCreatedEndpoints` instead `pulumi import` will only work with desiredAutoCreatedEndpoints`.
  /// [discoveryEndpoints] (Deprecated)
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveMaintenanceVersion] This field represents the actual maintenance version of the cluster.
  /// [endpoints] Endpoints for the instance.
  /// [engineConfigs] Optional. User-provided engine configurations for the instance.
  /// [engineVersion] Optional. Engine version of the instance.
  /// [gcsSource] GCS source for the instance.
  /// [instanceId] Required. The ID to use for the instance, which will become the final component of
  /// [isAclPolicyInSync] Whether the ACL policy is in sync with the cluster.
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster
  /// [labels] Optional. Labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceSchedules] Upcoming maintenance schedule.
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// [managedBackupSource] Managed backup source for the instance.
  /// [managedServerCas] Instance's Certificate Authority. This field will only be populated if instance's transitEncryptionMode is SERVER_AUTHENTICATION
  /// [mode] Optional. cluster or cluster-disabled.
  /// [name] Identifier. Unique name of the instance.
  /// [nodeConfigs] Represents configuration for nodes of the instance.
  /// [nodeType] Optional. Machine type for individual nodes of the instance.
  /// [persistenceConfig] Represents persistence configuration for a instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscAttachmentDetails] Configuration of a service attachment of the cluster, for creating PSC connections.
  /// [pscAutoConnections] (Deprecated)
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [replicaCount] Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  /// [serverCaMode] The serverCaMode for the TLS enabled Memorystore instance.
  /// [serverCaPool] The resource name of the server CA pool for an instance with CUSTOMER_MANAGED_CAS_CA
  /// [shardCount] Required. Number of shards for the instance.
  /// [state] Output only. Current state of the instance.
  /// [stateInfos] Additional information about the state of the instance.
  /// [transitEncryptionMode] Optional. Immutable. In-transit encryption mode of the instance.
  /// [uid] Output only. System assigned, unique identifier for the instance.
  /// [updateTime] Output only. Latest update timestamp of the instance.
  /// [zoneDistributionConfig] Zone distribution configuration for allocation of instance resources.
  const InstanceState({
    this.aclPolicy,
    this.authorizationMode,
    this.automatedBackupConfig,
    this.availableMaintenanceVersions,
    this.backupCollection,
    this.createTime,
    this.crossInstanceReplicationConfig,
    this.deletionPolicy,
    this.deletionProtectionEnabled,
    this.desiredAutoCreatedEndpoints,
    this.desiredPscAutoConnections,
    this.discoveryEndpoints,
    this.effectiveLabels,
    this.effectiveMaintenanceVersion,
    this.endpoints,
    this.engineConfigs,
    this.engineVersion,
    this.gcsSource,
    this.instanceId,
    this.isAclPolicyInSync,
    this.kmsKey,
    this.labels,
    this.location,
    this.maintenancePolicy,
    this.maintenanceSchedules,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.managedServerCas,
    this.mode,
    this.name,
    this.nodeConfigs,
    this.nodeType,
    this.persistenceConfig,
    this.project,
    this.pscAttachmentDetails,
    this.pscAutoConnections,
    this.pulumiLabels,
    this.replicaCount,
    this.serverCaMode,
    this.serverCaPool,
    this.shardCount,
    this.state,
    this.stateInfos,
    this.transitEncryptionMode,
    this.uid,
    this.updateTime,
    this.zoneDistributionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicy': ?aclPolicy,
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupCollection': ?backupCollection,
      'createTime': ?createTime,
      'crossInstanceReplicationConfig': ?pulumi.Input.mapOptionalInputValue<InstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(crossInstanceReplicationConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'desiredAutoCreatedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredAutoCreatedEndpoint>, List<Map<String, dynamic>>>(desiredAutoCreatedEndpoints, (value) => pulumi.Input.encodeList<InstanceDesiredAutoCreatedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredPscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredPscAutoConnection>, List<Map<String, dynamic>>>(desiredPscAutoConnections, (value) => pulumi.Input.encodeList<InstanceDesiredPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceDiscoveryEndpoint>, List<Map<String, dynamic>>>(discoveryEndpoints, (value) => pulumi.Input.encodeList<InstanceDiscoveryEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveLabels': ?effectiveLabels,
      'effectiveMaintenanceVersion': ?effectiveMaintenanceVersion,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<InstanceEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engineConfigs': ?engineConfigs,
      'engineVersion': ?engineVersion,
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<InstanceGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'isAclPolicyInSync': ?isAclPolicyInSync,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceSchedules': ?pulumi.Input.mapOptionalInputValue<List<InstanceMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<InstanceMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSource': ?pulumi.Input.mapOptionalInputValue<InstanceManagedBackupSource, Map<String, dynamic>>(managedBackupSource, (value) => value.toMap()),
      'managedServerCas': ?pulumi.Input.mapOptionalInputValue<List<InstanceManagedServerCa>, List<Map<String, dynamic>>>(managedServerCas, (value) => pulumi.Input.encodeList<InstanceManagedServerCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'name': ?name,
      'nodeConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<InstanceNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeType': ?nodeType,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'project': ?project,
      'pscAttachmentDetails': ?pulumi.Input.mapOptionalInputValue<List<InstancePscAttachmentDetail>, List<Map<String, dynamic>>>(pscAttachmentDetails, (value) => pulumi.Input.encodeList<InstancePscAttachmentDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<InstancePscAutoConnection>, List<Map<String, dynamic>>>(pscAutoConnections, (value) => pulumi.Input.encodeList<InstancePscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': ?pulumiLabels,
      'replicaCount': ?replicaCount,
      'serverCaMode': ?serverCaMode,
      'serverCaPool': ?serverCaPool,
      'shardCount': ?shardCount,
      'state': ?state,
      'stateInfos': ?pulumi.Input.mapOptionalInputValue<List<InstanceStateInfo>, List<Map<String, dynamic>>>(stateInfos, (value) => pulumi.Input.encodeList<InstanceStateInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitEncryptionMode': ?transitEncryptionMode,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'zoneDistributionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfig, (value) => value.toMap()),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      aclPolicy: (() { final guardedValue = map['aclPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationMode: (() { final guardedValue = map['authorizationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automatedBackupConfig: (() { final guardedValue = map['automatedBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutomatedBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availableMaintenanceVersions: (() { final guardedValue = map['availableMaintenanceVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupCollection: (() { final guardedValue = map['backupCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossInstanceReplicationConfig: (() { final guardedValue = map['crossInstanceReplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCrossInstanceReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      desiredAutoCreatedEndpoints: (() { final guardedValue = map['desiredAutoCreatedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDesiredAutoCreatedEndpoint>(guardedValue, (value) => InstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredPscAutoConnections: (() { final guardedValue = map['desiredPscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDesiredPscAutoConnection>(guardedValue, (value) => InstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discoveryEndpoints: (() { final guardedValue = map['discoveryEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDiscoveryEndpoint>(guardedValue, (value) => InstanceDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveMaintenanceVersion: (() { final guardedValue = map['effectiveMaintenanceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceEndpoint>(guardedValue, (value) => InstanceEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      engineConfigs: (() { final guardedValue = map['engineConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAclPolicyInSync: (() { final guardedValue = map['isAclPolicyInSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceSchedules: (() { final guardedValue = map['maintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceMaintenanceSchedule>(guardedValue, (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBackupSource: (() { final guardedValue = map['managedBackupSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceManagedBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedServerCas: (() { final guardedValue = map['managedServerCas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceManagedServerCa>(guardedValue, (value) => InstanceManagedServerCa.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfigs: (() { final guardedValue = map['nodeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNodeConfig>(guardedValue, (value) => InstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceConfig: (() { final guardedValue = map['persistenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePersistenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscAttachmentDetails: (() { final guardedValue = map['pscAttachmentDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePscAttachmentDetail>(guardedValue, (value) => InstancePscAttachmentDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pscAutoConnections: (() { final guardedValue = map['pscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePscAutoConnection>(guardedValue, (value) => InstancePscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serverCaMode: (() { final guardedValue = map['serverCaMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCaPool: (() { final guardedValue = map['serverCaPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateInfos: (() { final guardedValue = map['stateInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceStateInfo>(guardedValue, (value) => InstanceStateInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneDistributionConfig: (() { final guardedValue = map['zoneDistributionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceZoneDistributionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
