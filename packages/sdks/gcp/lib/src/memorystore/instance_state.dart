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
    pulumi.Output<String>? authorizationMode,
    pulumi.Output<InstanceAutomatedBackupConfig>? automatedBackupConfig,
    pulumi.Output<List<String>>? availableMaintenanceVersions,
    pulumi.Output<String>? backupCollection,
    pulumi.Output<String>? createTime,
    pulumi.Output<InstanceCrossInstanceReplicationConfig>? crossInstanceReplicationConfig,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<List<InstanceDesiredAutoCreatedEndpoint>>? desiredAutoCreatedEndpoints,
    pulumi.Output<List<InstanceDesiredPscAutoConnection>>? desiredPscAutoConnections,
    pulumi.Output<List<InstanceDiscoveryEndpoint>>? discoveryEndpoints,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? effectiveMaintenanceVersion,
    pulumi.Output<List<InstanceEndpoint>>? endpoints,
    pulumi.Output<Map<String, String>>? engineConfigs,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<InstanceGcsSource>? gcsSource,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<InstanceMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<List<InstanceMaintenanceSchedule>>? maintenanceSchedules,
    pulumi.Output<String>? maintenanceVersion,
    pulumi.Output<InstanceManagedBackupSource>? managedBackupSource,
    pulumi.Output<List<InstanceManagedServerCa>>? managedServerCas,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<List<InstanceNodeConfig>>? nodeConfigs,
    pulumi.Output<String>? nodeType,
    pulumi.Output<InstancePersistenceConfig>? persistenceConfig,
    pulumi.Output<String>? project,
    pulumi.Output<List<InstancePscAttachmentDetail>>? pscAttachmentDetails,
    pulumi.Output<List<InstancePscAutoConnection>>? pscAutoConnections,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<int>? replicaCount,
    pulumi.Output<int>? shardCount,
    pulumi.Output<String>? state,
    pulumi.Output<List<InstanceStateInfo>>? stateInfos,
    pulumi.Output<String>? transitEncryptionMode,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<InstanceZoneDistributionConfig>? zoneDistributionConfig,
  }) :
      authorizationMode = pulumi.Input.asOptionalInput<String>(authorizationMode),
      automatedBackupConfig = pulumi.Input.asOptionalInput<InstanceAutomatedBackupConfig>(automatedBackupConfig),
      availableMaintenanceVersions = pulumi.Input.asOptionalInput<List<String>>(availableMaintenanceVersions),
      backupCollection = pulumi.Input.asOptionalInput<String>(backupCollection),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      crossInstanceReplicationConfig = pulumi.Input.asOptionalInput<InstanceCrossInstanceReplicationConfig>(crossInstanceReplicationConfig),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      desiredAutoCreatedEndpoints = pulumi.Input.asOptionalInput<List<InstanceDesiredAutoCreatedEndpoint>>(desiredAutoCreatedEndpoints),
      desiredPscAutoConnections = pulumi.Input.asOptionalInput<List<InstanceDesiredPscAutoConnection>>(desiredPscAutoConnections),
      discoveryEndpoints = pulumi.Input.asOptionalInput<List<InstanceDiscoveryEndpoint>>(discoveryEndpoints),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      effectiveMaintenanceVersion = pulumi.Input.asOptionalInput<String>(effectiveMaintenanceVersion),
      endpoints = pulumi.Input.asOptionalInput<List<InstanceEndpoint>>(endpoints),
      engineConfigs = pulumi.Input.asOptionalInput<Map<String, String>>(engineConfigs),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      gcsSource = pulumi.Input.asOptionalInput<InstanceGcsSource>(gcsSource),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenancePolicy = pulumi.Input.asOptionalInput<InstanceMaintenancePolicy>(maintenancePolicy),
      maintenanceSchedules = pulumi.Input.asOptionalInput<List<InstanceMaintenanceSchedule>>(maintenanceSchedules),
      maintenanceVersion = pulumi.Input.asOptionalInput<String>(maintenanceVersion),
      managedBackupSource = pulumi.Input.asOptionalInput<InstanceManagedBackupSource>(managedBackupSource),
      managedServerCas = pulumi.Input.asOptionalInput<List<InstanceManagedServerCa>>(managedServerCas),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfigs = pulumi.Input.asOptionalInput<List<InstanceNodeConfig>>(nodeConfigs),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      persistenceConfig = pulumi.Input.asOptionalInput<InstancePersistenceConfig>(persistenceConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscAttachmentDetails = pulumi.Input.asOptionalInput<List<InstancePscAttachmentDetail>>(pscAttachmentDetails),
      pscAutoConnections = pulumi.Input.asOptionalInput<List<InstancePscAutoConnection>>(pscAutoConnections),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      shardCount = pulumi.Input.asOptionalInput<int>(shardCount),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateInfos = pulumi.Input.asOptionalInput<List<InstanceStateInfo>>(stateInfos),
      transitEncryptionMode = pulumi.Input.asOptionalInput<String>(transitEncryptionMode),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      zoneDistributionConfig = pulumi.Input.asOptionalInput<InstanceZoneDistributionConfig>(zoneDistributionConfig);

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
      authorizationMode: map['authorizationMode'] == null ? null : pulumi.Output.create<String>(map['authorizationMode'] as String),
      automatedBackupConfig: map['automatedBackupConfig'] == null ? null : pulumi.Output.create<InstanceAutomatedBackupConfig>(InstanceAutomatedBackupConfig.fromMap((map['automatedBackupConfig'] as Map).cast<String, dynamic>())),
      availableMaintenanceVersions: map['availableMaintenanceVersions'] == null ? null : pulumi.Output.create<List<String>>((map['availableMaintenanceVersions'] as List).cast<String>()),
      backupCollection: map['backupCollection'] == null ? null : pulumi.Output.create<String>(map['backupCollection'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      crossInstanceReplicationConfig: map['crossInstanceReplicationConfig'] == null ? null : pulumi.Output.create<InstanceCrossInstanceReplicationConfig>(InstanceCrossInstanceReplicationConfig.fromMap((map['crossInstanceReplicationConfig'] as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      desiredAutoCreatedEndpoints: map['desiredAutoCreatedEndpoints'] == null ? null : pulumi.Output.create<List<InstanceDesiredAutoCreatedEndpoint>>(pulumi.Input.decodeList<InstanceDesiredAutoCreatedEndpoint>(map['desiredAutoCreatedEndpoints'], (value) => InstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      desiredPscAutoConnections: map['desiredPscAutoConnections'] == null ? null : pulumi.Output.create<List<InstanceDesiredPscAutoConnection>>(pulumi.Input.decodeList<InstanceDesiredPscAutoConnection>(map['desiredPscAutoConnections'], (value) => InstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))),
      discoveryEndpoints: map['discoveryEndpoints'] == null ? null : pulumi.Output.create<List<InstanceDiscoveryEndpoint>>(pulumi.Input.decodeList<InstanceDiscoveryEndpoint>(map['discoveryEndpoints'], (value) => InstanceDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] == null ? null : pulumi.Output.create<String>(map['effectiveMaintenanceVersion'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<InstanceEndpoint>>(pulumi.Input.decodeList<InstanceEndpoint>(map['endpoints'], (value) => InstanceEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      engineConfigs: map['engineConfigs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['engineConfigs'] as Map).cast<String, String>()),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      gcsSource: map['gcsSource'] == null ? null : pulumi.Output.create<InstanceGcsSource>(InstanceGcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<InstanceMaintenancePolicy>(InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : pulumi.Output.create<List<InstanceMaintenanceSchedule>>(pulumi.Input.decodeList<InstanceMaintenanceSchedule>(map['maintenanceSchedules'], (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : pulumi.Output.create<String>(map['maintenanceVersion'] as String),
      managedBackupSource: map['managedBackupSource'] == null ? null : pulumi.Output.create<InstanceManagedBackupSource>(InstanceManagedBackupSource.fromMap((map['managedBackupSource'] as Map).cast<String, dynamic>())),
      managedServerCas: map['managedServerCas'] == null ? null : pulumi.Output.create<List<InstanceManagedServerCa>>(pulumi.Input.decodeList<InstanceManagedServerCa>(map['managedServerCas'], (value) => InstanceManagedServerCa.fromMap((value as Map).cast<String, dynamic>()))),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeConfigs: map['nodeConfigs'] == null ? null : pulumi.Output.create<List<InstanceNodeConfig>>(pulumi.Input.decodeList<InstanceNodeConfig>(map['nodeConfigs'], (value) => InstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      persistenceConfig: map['persistenceConfig'] == null ? null : pulumi.Output.create<InstancePersistenceConfig>(InstancePersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscAttachmentDetails: map['pscAttachmentDetails'] == null ? null : pulumi.Output.create<List<InstancePscAttachmentDetail>>(pulumi.Input.decodeList<InstancePscAttachmentDetail>(map['pscAttachmentDetails'], (value) => InstancePscAttachmentDetail.fromMap((value as Map).cast<String, dynamic>()))),
      pscAutoConnections: map['pscAutoConnections'] == null ? null : pulumi.Output.create<List<InstancePscAutoConnection>>(pulumi.Input.decodeList<InstancePscAutoConnection>(map['pscAutoConnections'], (value) => InstancePscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      replicaCount: map['replicaCount'] == null ? null : pulumi.Output.create<int>(map['replicaCount'] as int),
      shardCount: map['shardCount'] == null ? null : pulumi.Output.create<int>(map['shardCount'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateInfos: map['stateInfos'] == null ? null : pulumi.Output.create<List<InstanceStateInfo>>(pulumi.Input.decodeList<InstanceStateInfo>(map['stateInfos'], (value) => InstanceStateInfo.fromMap((value as Map).cast<String, dynamic>()))),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : pulumi.Output.create<String>(map['transitEncryptionMode'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      zoneDistributionConfig: map['zoneDistributionConfig'] == null ? null : pulumi.Output.create<InstanceZoneDistributionConfig>(InstanceZoneDistributionConfig.fromMap((map['zoneDistributionConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

