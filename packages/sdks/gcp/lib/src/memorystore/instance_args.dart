// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_automated_backup_config.dart';
import 'instance_cross_instance_replication_config.dart';
import 'instance_desired_auto_created_endpoint.dart';
import 'instance_desired_psc_auto_connection.dart';
import 'instance_gcs_source.dart';
import 'instance_maintenance_policy.dart';
import 'instance_managed_backup_source.dart';
import 'instance_persistence_config.dart';
import 'instance_zone_distribution_config.dart';

/// {@template pulumi_memorystore_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_memorystore_instance_instance_args_doc}
class InstanceArgs {
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
  final pulumi.Input<String> instanceId;
  /// The KMS key used to encrypt the at-rest data of the cluster
  final pulumi.Input<String?>? kmsKey;
  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  final pulumi.Input<String> location;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy?>? maintenancePolicy;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String?>? maintenanceVersion;
  /// Managed backup source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceManagedBackupSource?>? managedBackupSource;
  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  final pulumi.Input<String?>? mode;
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
  final pulumi.Input<int> shardCount;
  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  final pulumi.Input<String?>? transitEncryptionMode;
  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  final pulumi.Input<InstanceZoneDistributionConfig?>? zoneDistributionConfig;

  /// Creates a new [InstanceArgs].
  /// [aclPolicy] The name of the ACL policy to attach to the instance.
  /// [authorizationMode] Optional. Immutable. Authorization mode of the instance. Possible values:
  /// [automatedBackupConfig] The automated backup config for a instance.
  /// [crossInstanceReplicationConfig] Cross instance replication config
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtectionEnabled] Optional. If set to true deletion of the instance will fail.
  /// [desiredAutoCreatedEndpoints] Immutable. User inputs for the auto-created endpoints connections.
  /// [desiredPscAutoConnections] `desiredPscAutoConnections` is deprecated  Use `desiredAutoCreatedEndpoints` instead `pulumi import` will only work with desiredAutoCreatedEndpoints`.
  /// [engineConfigs] Optional. User-provided engine configurations for the instance.
  /// [engineVersion] Optional. Engine version of the instance.
  /// [gcsSource] GCS source for the instance.
  /// [instanceId] Required. The ID to use for the instance, which will become the final component of
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster
  /// [labels] Optional. Labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// [managedBackupSource] Managed backup source for the instance.
  /// [mode] Optional. cluster or cluster-disabled.
  /// [nodeType] Optional. Machine type for individual nodes of the instance.
  /// [persistenceConfig] Represents persistence configuration for a instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [replicaCount] Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  /// [serverCaMode] The serverCaMode for the TLS enabled Memorystore instance.
  /// [serverCaPool] The resource name of the server CA pool for an instance with CUSTOMER_MANAGED_CAS_CA
  /// [shardCount] Required. Number of shards for the instance.
  /// [transitEncryptionMode] Optional. Immutable. In-transit encryption mode of the instance.
  /// [zoneDistributionConfig] Zone distribution configuration for allocation of instance resources.
  const InstanceArgs({
    this.aclPolicy,
    this.authorizationMode,
    this.automatedBackupConfig,
    this.crossInstanceReplicationConfig,
    this.deletionPolicy,
    this.deletionProtectionEnabled,
    this.desiredAutoCreatedEndpoints,
    this.desiredPscAutoConnections,
    this.engineConfigs,
    this.engineVersion,
    this.gcsSource,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    this.maintenancePolicy,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.mode,
    this.nodeType,
    this.persistenceConfig,
    this.project,
    this.replicaCount,
    this.serverCaMode,
    this.serverCaPool,
    required this.shardCount,
    this.transitEncryptionMode,
    this.zoneDistributionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicy': ?aclPolicy,
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'crossInstanceReplicationConfig': ?pulumi.Input.mapOptionalInputValue<InstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(crossInstanceReplicationConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'desiredAutoCreatedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredAutoCreatedEndpoint>, List<Map<String, dynamic>>>(desiredAutoCreatedEndpoints, (value) => pulumi.Input.encodeList<InstanceDesiredAutoCreatedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredPscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredPscAutoConnection>, List<Map<String, dynamic>>>(desiredPscAutoConnections, (value) => pulumi.Input.encodeList<InstanceDesiredPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engineConfigs': ?engineConfigs,
      'engineVersion': ?engineVersion,
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<InstanceGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'instanceId': instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSource': ?pulumi.Input.mapOptionalInputValue<InstanceManagedBackupSource, Map<String, dynamic>>(managedBackupSource, (value) => value.toMap()),
      'mode': ?mode,
      'nodeType': ?nodeType,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'project': ?project,
      'replicaCount': ?replicaCount,
      'serverCaMode': ?serverCaMode,
      'serverCaPool': ?serverCaPool,
      'shardCount': shardCount,
      'transitEncryptionMode': ?transitEncryptionMode,
      'zoneDistributionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfig, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      aclPolicy: (() { final guardedValue = map['aclPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationMode: (() { final guardedValue = map['authorizationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automatedBackupConfig: (() { final guardedValue = map['automatedBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutomatedBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossInstanceReplicationConfig: (() { final guardedValue = map['crossInstanceReplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCrossInstanceReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      desiredAutoCreatedEndpoints: (() { final guardedValue = map['desiredAutoCreatedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDesiredAutoCreatedEndpoint>(guardedValue, (value) => InstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredPscAutoConnections: (() { final guardedValue = map['desiredPscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDesiredPscAutoConnection>(guardedValue, (value) => InstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      engineConfigs: (() { final guardedValue = map['engineConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBackupSource: (() { final guardedValue = map['managedBackupSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceManagedBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceConfig: (() { final guardedValue = map['persistenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePersistenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serverCaMode: (() { final guardedValue = map['serverCaMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCaPool: (() { final guardedValue = map['serverCaPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCount: pulumi.Input.fromValue((map['shardCount'] as num).toInt()),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneDistributionConfig: (() { final guardedValue = map['zoneDistributionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceZoneDistributionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
