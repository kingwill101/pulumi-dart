// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_operations_config_response.dart';
import 'bare_metal_cluster_upgrade_policy_response.dart';
import 'bare_metal_control_plane_config_response.dart';
import 'bare_metal_load_balancer_config_response.dart';
import 'bare_metal_maintenance_config_response.dart';
import 'bare_metal_maintenance_status_response.dart';
import 'bare_metal_network_config_response.dart';
import 'bare_metal_node_access_config_response.dart';
import 'bare_metal_os_environment_config_response.dart';
import 'bare_metal_proxy_config_response.dart';
import 'bare_metal_security_config_response.dart';
import 'bare_metal_storage_config_response.dart';
import 'bare_metal_workload_node_config_response.dart';
import 'binary_authorization_response.dart';
import 'fleet_response.dart';
import 'resource_status_response.dart';
import 'validation_check_response.dart';

/// Result data returned by getBareMetalCluster.
class GetBareMetalClusterResult {
  /// The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  final String? adminClusterMembership;
  /// The resource name of the bare metal admin cluster managing this user cluster.
  final String? adminClusterName;
  /// Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String>? annotations;
  /// The Anthos clusters on bare metal version for your user cluster.
  final String? bareMetalVersion;
  /// Binary Authorization related configurations.
  final BinaryAuthorizationResponse? binaryAuthorization;
  /// Cluster operations configuration.
  final BareMetalClusterOperationsConfigResponse? clusterOperations;
  /// Control plane configuration.
  final BareMetalControlPlaneConfigResponse? controlPlane;
  /// The time when the bare metal user cluster was created.
  final String? createTime;
  /// The time when the bare metal user cluster was deleted. If the resource is not deleted, this must be empty
  final String? deleteTime;
  /// A human readable description of this bare metal user cluster.
  final String? description;
  /// The IP address of the bare metal user cluster's API server.
  final String? endpoint;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String? etag;
  /// Fleet configuration for the cluster.
  final FleetResponse? fleet;
  /// Load balancer configuration.
  final BareMetalLoadBalancerConfigResponse? loadBalancer;
  /// The object name of the bare metal user cluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the name in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. When the local name and cluster name differ, the local name is used in the admin cluster controller logs. You use the cluster name when accessing the cluster using bmctl and kubectl.
  final String? localName;
  /// Maintenance configuration.
  final BareMetalMaintenanceConfigResponse? maintenanceConfig;
  /// Status of on-going maintenance tasks.
  final BareMetalMaintenanceStatusResponse? maintenanceStatus;
  /// Immutable. The bare metal user cluster resource name.
  final String? name;
  /// Network configuration.
  final BareMetalNetworkConfigResponse? networkConfig;
  /// Node access related configurations.
  final BareMetalNodeAccessConfigResponse? nodeAccessConfig;
  /// Workload node configuration.
  final BareMetalWorkloadNodeConfigResponse? nodeConfig;
  /// OS environment related configurations.
  final BareMetalOsEnvironmentConfigResponse? osEnvironmentConfig;
  /// Proxy configuration.
  final BareMetalProxyConfigResponse? proxy;
  /// If set, there are currently changes in flight to the bare metal user cluster.
  final bool? reconciling;
  /// Security related setting configuration.
  final BareMetalSecurityConfigResponse? securityConfig;
  /// The current state of the bare metal user cluster.
  final String? state;
  /// Detailed cluster status.
  final ResourceStatusResponse? status;
  /// Storage configuration.
  final BareMetalStorageConfigResponse? storage;
  /// The unique identifier of the bare metal user cluster.
  final String? uid;
  /// The time when the bare metal user cluster was last updated.
  final String? updateTime;
  /// The cluster upgrade policy.
  final BareMetalClusterUpgradePolicyResponse? upgradePolicy;
  /// The result of the preflight check.
  final ValidationCheckResponse? validationCheck;

  /// Creates a new [GetBareMetalClusterResult].
  /// [adminClusterMembership] The admin cluster this bare metal user cluster belongs to. This is the full resource name of the admin cluster's fleet membership.
  /// [adminClusterName] The resource name of the bare metal admin cluster managing this user cluster.
  /// [annotations] Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [bareMetalVersion] The Anthos clusters on bare metal version for your user cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Cluster operations configuration.
  /// [controlPlane] Control plane configuration.
  /// [createTime] The time when the bare metal user cluster was created.
  /// [deleteTime] The time when the bare metal user cluster was deleted. If the resource is not deleted, this must be empty
  /// [description] A human readable description of this bare metal user cluster.
  /// [endpoint] The IP address of the bare metal user cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [fleet] Fleet configuration for the cluster.
  /// [loadBalancer] Load balancer configuration.
  /// [localName] The object name of the bare metal user cluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the name in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. When the local name and cluster name differ, the local name is used in the admin cluster controller logs. You use the cluster name when accessing the cluster using bmctl and kubectl.
  /// [maintenanceConfig] Maintenance configuration.
  /// [maintenanceStatus] Status of on-going maintenance tasks.
  /// [name] Immutable. The bare metal user cluster resource name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Node access related configurations.
  /// [nodeConfig] Workload node configuration.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [proxy] Proxy configuration.
  /// [reconciling] If set, there are currently changes in flight to the bare metal user cluster.
  /// [securityConfig] Security related setting configuration.
  /// [state] The current state of the bare metal user cluster.
  /// [status] Detailed cluster status.
  /// [storage] Storage configuration.
  /// [uid] The unique identifier of the bare metal user cluster.
  /// [updateTime] The time when the bare metal user cluster was last updated.
  /// [upgradePolicy] The cluster upgrade policy.
  /// [validationCheck] The result of the preflight check.
  const GetBareMetalClusterResult({
    this.adminClusterMembership,
    this.adminClusterName,
    this.annotations,
    this.bareMetalVersion,
    this.binaryAuthorization,
    this.clusterOperations,
    this.controlPlane,
    this.createTime,
    this.deleteTime,
    this.description,
    this.endpoint,
    this.etag,
    this.fleet,
    this.loadBalancer,
    this.localName,
    this.maintenanceConfig,
    this.maintenanceStatus,
    this.name,
    this.networkConfig,
    this.nodeAccessConfig,
    this.nodeConfig,
    this.osEnvironmentConfig,
    this.proxy,
    this.reconciling,
    this.securityConfig,
    this.state,
    this.status,
    this.storage,
    this.uid,
    this.updateTime,
    this.upgradePolicy,
    this.validationCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': ?adminClusterMembership,
      'adminClusterName': ?adminClusterName,
      'annotations': ?annotations,
      'bareMetalVersion': ?bareMetalVersion,
      'binaryAuthorization': ?binaryAuthorization?.toMap(),
      'clusterOperations': ?clusterOperations?.toMap(),
      'controlPlane': ?controlPlane?.toMap(),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleet': ?fleet?.toMap(),
      'loadBalancer': ?loadBalancer?.toMap(),
      'localName': ?localName,
      'maintenanceConfig': ?maintenanceConfig?.toMap(),
      'maintenanceStatus': ?maintenanceStatus?.toMap(),
      'name': ?name,
      'networkConfig': ?networkConfig?.toMap(),
      'nodeAccessConfig': ?nodeAccessConfig?.toMap(),
      'nodeConfig': ?nodeConfig?.toMap(),
      'osEnvironmentConfig': ?osEnvironmentConfig?.toMap(),
      'proxy': ?proxy?.toMap(),
      'reconciling': ?reconciling,
      'securityConfig': ?securityConfig?.toMap(),
      'state': ?state,
      'status': ?status?.toMap(),
      'storage': ?storage?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'upgradePolicy': ?upgradePolicy?.toMap(),
      'validationCheck': ?validationCheck?.toMap(),
    };
  }

  factory GetBareMetalClusterResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalClusterResult(
      adminClusterMembership: (() { final guardedValue = map['adminClusterMembership']; if (guardedValue == null) return null; return guardedValue as String; })(),
      adminClusterName: (() { final guardedValue = map['adminClusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      bareMetalVersion: (() { final guardedValue = map['bareMetalVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return BinaryAuthorizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterOperations: (() { final guardedValue = map['clusterOperations']; if (guardedValue == null) return null; return BareMetalClusterOperationsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      controlPlane: (() { final guardedValue = map['controlPlane']; if (guardedValue == null) return null; return BareMetalControlPlaneConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return FleetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return BareMetalLoadBalancerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      localName: (() { final guardedValue = map['localName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceConfig: (() { final guardedValue = map['maintenanceConfig']; if (guardedValue == null) return null; return BareMetalMaintenanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maintenanceStatus: (() { final guardedValue = map['maintenanceStatus']; if (guardedValue == null) return null; return BareMetalMaintenanceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return BareMetalNetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeAccessConfig: (() { final guardedValue = map['nodeAccessConfig']; if (guardedValue == null) return null; return BareMetalNodeAccessConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return BareMetalWorkloadNodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osEnvironmentConfig: (() { final guardedValue = map['osEnvironmentConfig']; if (guardedValue == null) return null; return BareMetalOsEnvironmentConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return BareMetalProxyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      securityConfig: (() { final guardedValue = map['securityConfig']; if (guardedValue == null) return null; return BareMetalSecurityConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return BareMetalStorageConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradePolicy: (() { final guardedValue = map['upgradePolicy']; if (guardedValue == null) return null; return BareMetalClusterUpgradePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      validationCheck: (() { final guardedValue = map['validationCheck']; if (guardedValue == null) return null; return ValidationCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
