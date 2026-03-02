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
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH
  final pulumi.Input<String>? authorizationMode;
  /// The automated backup config for a instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutomatedBackupConfig>? automatedBackupConfig;
  /// This field is used to determine the available maintenance versions for the self service update.
  final pulumi.Input<List<String>>? availableMaintenanceVersions;
  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  final pulumi.Input<String>? backupCollection;
  /// Output only. Creation timestamp of the instance.
  final pulumi.Input<String>? createTime;
  /// Cross instance replication config
  /// Structure is documented below.
  final pulumi.Input<InstanceCrossInstanceReplicationConfig>? crossInstanceReplicationConfig;
  /// Optional. If set to true deletion of the instance will fail.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Immutable. User inputs for the auto-created endpoints connections.
  final pulumi.Input<List<InstanceDesiredAutoCreatedEndpoint>>? desiredAutoCreatedEndpoints;
  /// `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  final pulumi.Input<List<InstanceDesiredPscAutoConnection>>? desiredPscAutoConnections;
  /// (Deprecated)
  /// Deprecated. Output only. Endpoints clients can connect to the instance through.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceDiscoveryEndpoint>>? discoveryEndpoints;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This field represents the actual maintenance version of the cluster.
  final pulumi.Input<String>? effectiveMaintenanceVersion;
  /// Endpoints for the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceEndpoint>>? endpoints;
  /// Optional. User-provided engine configurations for the instance.
  final pulumi.Input<Map<String, String>>? engineConfigs;
  /// Optional. Engine version of the instance.
  final pulumi.Input<String>? engineVersion;
  /// GCS source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceGcsSource>? gcsSource;
  /// Required. The ID to use for the instance, which will become the final component of
  /// the instance's resource name.
  /// This value is subject to the following restrictions:
  /// * Must be 4-63 characters in length
  /// * Must begin with a letter or digit
  /// * Must contain only lowercase letters, digits, and hyphens
  /// * Must not end with a hyphen
  /// * Must be unique within a location
  final pulumi.Input<String>? instanceId;
  /// The KMS key used to encrypt the at-rest data of the cluster
  final pulumi.Input<String>? kmsKey;
  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  final pulumi.Input<String>? location;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;
  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceMaintenanceSchedule>>? maintenanceSchedules;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String>? maintenanceVersion;
  /// Managed backup source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceManagedBackupSource>? managedBackupSource;
  /// Instance's Certificate Authority. This field will only be populated if instance's transit_encryption_mode is SERVER_AUTHENTICATION
  /// Structure is documented below.
  final pulumi.Input<List<InstanceManagedServerCa>>? managedServerCas;
  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  final pulumi.Input<String>? mode;
  /// Identifier. Unique name of the instance.
  /// Format: projects/{project}/locations/{location}/instances/{instance}
  final pulumi.Input<String>? name;
  /// Represents configuration for nodes of the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceNodeConfig>>? nodeConfigs;
  /// Optional. Machine type for individual nodes of the instance.
  /// Possible values:
  /// SHARED_CORE_NANO
  /// HIGHMEM_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  final pulumi.Input<String>? nodeType;
  /// Represents persistence configuration for a instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfig>? persistenceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration of a service attachment of the cluster, for creating PSC connections.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscAttachmentDetail>>? pscAttachmentDetails;
  /// (Deprecated)
  /// Output only. User inputs and resource details of the auto-created PSC connections.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscAutoConnection>>? pscAutoConnections;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  final pulumi.Input<int>? replicaCount;
  /// Required. Number of shards for the instance.
  final pulumi.Input<int>? shardCount;
  /// Output only. Current state of the instance.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  final pulumi.Input<String>? state;
  /// Additional information about the state of the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceStateInfo>>? stateInfos;
  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  final pulumi.Input<String>? transitEncryptionMode;
  /// Output only. System assigned, unique identifier for the instance.
  final pulumi.Input<String>? uid;
  /// Output only. Latest update timestamp of the instance.
  final pulumi.Input<String>? updateTime;
  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  final pulumi.Input<InstanceZoneDistributionConfig>? zoneDistributionConfig;

  /// Creates a new [InstanceState].
  /// [authorizationMode] Optional. Immutable. Authorization mode of the instance. Possible values:
  /// [automatedBackupConfig] The automated backup config for a instance.
  /// [availableMaintenanceVersions] This field is used to determine the available maintenance versions for the self service update.
  /// [backupCollection] The backup collection full resource name.
  /// [createTime] Output only. Creation timestamp of the instance.
  /// [crossInstanceReplicationConfig] Cross instance replication config
  /// [deletionProtectionEnabled] Optional. If set to true deletion of the instance will fail.
  /// [desiredAutoCreatedEndpoints] Immutable. User inputs for the auto-created endpoints connections.
  /// [desiredPscAutoConnections] `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  /// [discoveryEndpoints] (Deprecated)
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveMaintenanceVersion] This field represents the actual maintenance version of the cluster.
  /// [endpoints] Endpoints for the instance.
  /// [engineConfigs] Optional. User-provided engine configurations for the instance.
  /// [engineVersion] Optional. Engine version of the instance.
  /// [gcsSource] GCS source for the instance.
  /// [instanceId] Required. The ID to use for the instance, which will become the final component of
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster
  /// [labels] Optional. Labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceSchedules] Upcoming maintenance schedule.
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// [managedBackupSource] Managed backup source for the instance.
  /// [managedServerCas] Instance's Certificate Authority. This field will only be populated if instance's transit_encryption_mode is SERVER_AUTHENTICATION
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
  /// [shardCount] Required. Number of shards for the instance.
  /// [state] Output only. Current state of the instance.
  /// [stateInfos] Additional information about the state of the instance.
  /// [transitEncryptionMode] Optional. Immutable. In-transit encryption mode of the instance.
  /// [uid] Output only. System assigned, unique identifier for the instance.
  /// [updateTime] Output only. Latest update timestamp of the instance.
  /// [zoneDistributionConfig] Zone distribution configuration for allocation of instance resources.
  InstanceState({
    this.authorizationMode,
    this.automatedBackupConfig,
    this.availableMaintenanceVersions,
    this.backupCollection,
    this.createTime,
    this.crossInstanceReplicationConfig,
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
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupCollection': ?backupCollection,
      'createTime': ?createTime,
      'crossInstanceReplicationConfig': ?pulumi.Input.mapOptionalInputValue<InstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(crossInstanceReplicationConfig, (value) => value.toMap()),
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
      authorizationMode: map['authorizationMode'] == null ? null : (map['authorizationMode'] as String).input(),
      automatedBackupConfig: map['automatedBackupConfig'] == null ? null : (InstanceAutomatedBackupConfig.fromMap((map['automatedBackupConfig'] as Map).cast<String, dynamic>())).input(),
      availableMaintenanceVersions: map['availableMaintenanceVersions'] == null ? null : ((map['availableMaintenanceVersions'] as List).cast<String>()).input(),
      backupCollection: map['backupCollection'] == null ? null : (map['backupCollection'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      crossInstanceReplicationConfig: map['crossInstanceReplicationConfig'] == null ? null : (InstanceCrossInstanceReplicationConfig.fromMap((map['crossInstanceReplicationConfig'] as Map).cast<String, dynamic>())).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      desiredAutoCreatedEndpoints: map['desiredAutoCreatedEndpoints'] == null ? null : (pulumi.Input.decodeList<InstanceDesiredAutoCreatedEndpoint>(map['desiredAutoCreatedEndpoints'], (value) => InstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      desiredPscAutoConnections: map['desiredPscAutoConnections'] == null ? null : (pulumi.Input.decodeList<InstanceDesiredPscAutoConnection>(map['desiredPscAutoConnections'], (value) => InstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discoveryEndpoints: map['discoveryEndpoints'] == null ? null : (pulumi.Input.decodeList<InstanceDiscoveryEndpoint>(map['discoveryEndpoints'], (value) => InstanceDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] == null ? null : (map['effectiveMaintenanceVersion'] as String).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<InstanceEndpoint>(map['endpoints'], (value) => InstanceEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      engineConfigs: map['engineConfigs'] == null ? null : ((map['engineConfigs'] as Map).cast<String, String>()).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      gcsSource: map['gcsSource'] == null ? null : (InstanceGcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : (pulumi.Input.decodeList<InstanceMaintenanceSchedule>(map['maintenanceSchedules'], (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : (map['maintenanceVersion'] as String).input(),
      managedBackupSource: map['managedBackupSource'] == null ? null : (InstanceManagedBackupSource.fromMap((map['managedBackupSource'] as Map).cast<String, dynamic>())).input(),
      managedServerCas: map['managedServerCas'] == null ? null : (pulumi.Input.decodeList<InstanceManagedServerCa>(map['managedServerCas'], (value) => InstanceManagedServerCa.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeConfigs: map['nodeConfigs'] == null ? null : (pulumi.Input.decodeList<InstanceNodeConfig>(map['nodeConfigs'], (value) => InstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      persistenceConfig: map['persistenceConfig'] == null ? null : (InstancePersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pscAttachmentDetails: map['pscAttachmentDetails'] == null ? null : (pulumi.Input.decodeList<InstancePscAttachmentDetail>(map['pscAttachmentDetails'], (value) => InstancePscAttachmentDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pscAutoConnections: map['pscAutoConnections'] == null ? null : (pulumi.Input.decodeList<InstancePscAutoConnection>(map['pscAutoConnections'], (value) => InstancePscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      shardCount: map['shardCount'] == null ? null : (map['shardCount'] as int).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stateInfos: map['stateInfos'] == null ? null : (pulumi.Input.decodeList<InstanceStateInfo>(map['stateInfos'], (value) => InstanceStateInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : (map['transitEncryptionMode'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      zoneDistributionConfig: map['zoneDistributionConfig'] == null ? null : (InstanceZoneDistributionConfig.fromMap((map['zoneDistributionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

