// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_operations_config_response.dart';
import 'bare_metal_admin_control_plane_config_response.dart';
import 'bare_metal_admin_load_balancer_config_response.dart';
import 'bare_metal_admin_maintenance_config_response.dart';
import 'bare_metal_admin_maintenance_status_response.dart';
import 'bare_metal_admin_network_config_response.dart';
import 'bare_metal_admin_node_access_config_response.dart';
import 'bare_metal_admin_os_environment_config_response.dart';
import 'bare_metal_admin_proxy_config_response.dart';
import 'bare_metal_admin_security_config_response.dart';
import 'bare_metal_admin_storage_config_response.dart';
import 'bare_metal_admin_workload_node_config_response.dart';
import 'binary_authorization_response.dart';
import 'fleet_response.dart';
import 'resource_status_response.dart';
import 'validation_check_response.dart';

/// Result data returned by getBareMetalAdminCluster.
class GetBareMetalAdminClusterResult {
  /// Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String>? annotations;
  /// The Anthos clusters on bare metal version for the bare metal admin cluster.
  final String? bareMetalVersion;
  /// Binary Authorization related configurations.
  final BinaryAuthorizationResponse? binaryAuthorization;
  /// Cluster operations configuration.
  final BareMetalAdminClusterOperationsConfigResponse? clusterOperations;
  /// Control plane configuration.
  final BareMetalAdminControlPlaneConfigResponse? controlPlane;
  /// The time at which this bare metal admin cluster was created.
  final String? createTime;
  /// The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  final String? deleteTime;
  /// A human readable description of this bare metal admin cluster.
  final String? description;
  /// The IP address name of bare metal admin cluster's API server.
  final String? endpoint;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String? etag;
  /// Fleet configuration for the cluster.
  final FleetResponse? fleet;
  /// Load balancer configuration.
  final BareMetalAdminLoadBalancerConfigResponse? loadBalancer;
  /// The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  final String? localName;
  /// Maintenance configuration.
  final BareMetalAdminMaintenanceConfigResponse? maintenanceConfig;
  /// MaintenanceStatus representing state of maintenance.
  final BareMetalAdminMaintenanceStatusResponse? maintenanceStatus;
  /// Immutable. The bare metal admin cluster resource name.
  final String? name;
  /// Network configuration.
  final BareMetalAdminNetworkConfigResponse? networkConfig;
  /// Node access related configurations.
  final BareMetalAdminNodeAccessConfigResponse? nodeAccessConfig;
  /// Workload node configuration.
  final BareMetalAdminWorkloadNodeConfigResponse? nodeConfig;
  /// OS environment related configurations.
  final BareMetalAdminOsEnvironmentConfigResponse? osEnvironmentConfig;
  /// Proxy configuration.
  final BareMetalAdminProxyConfigResponse? proxy;
  /// If set, there are currently changes in flight to the bare metal Admin Cluster.
  final bool? reconciling;
  /// Security related configuration.
  final BareMetalAdminSecurityConfigResponse? securityConfig;
  /// The current state of the bare metal admin cluster.
  final String? state;
  /// ResourceStatus representing detailed cluster status.
  final ResourceStatusResponse? status;
  /// Storage configuration.
  final BareMetalAdminStorageConfigResponse? storage;
  /// The unique identifier of the bare metal admin cluster.
  final String? uid;
  /// The time at which this bare metal admin cluster was last updated.
  final String? updateTime;
  /// ValidationCheck representing the result of the preflight check.
  final ValidationCheckResponse? validationCheck;

  /// Creates a new [GetBareMetalAdminClusterResult].
  /// [annotations] Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [bareMetalVersion] The Anthos clusters on bare metal version for the bare metal admin cluster.
  /// [binaryAuthorization] Binary Authorization related configurations.
  /// [clusterOperations] Cluster operations configuration.
  /// [controlPlane] Control plane configuration.
  /// [createTime] The time at which this bare metal admin cluster was created.
  /// [deleteTime] The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  /// [description] A human readable description of this bare metal admin cluster.
  /// [endpoint] The IP address name of bare metal admin cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [fleet] Fleet configuration for the cluster.
  /// [loadBalancer] Load balancer configuration.
  /// [localName] The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  /// [maintenanceConfig] Maintenance configuration.
  /// [maintenanceStatus] MaintenanceStatus representing state of maintenance.
  /// [name] Immutable. The bare metal admin cluster resource name.
  /// [networkConfig] Network configuration.
  /// [nodeAccessConfig] Node access related configurations.
  /// [nodeConfig] Workload node configuration.
  /// [osEnvironmentConfig] OS environment related configurations.
  /// [proxy] Proxy configuration.
  /// [reconciling] If set, there are currently changes in flight to the bare metal Admin Cluster.
  /// [securityConfig] Security related configuration.
  /// [state] The current state of the bare metal admin cluster.
  /// [status] ResourceStatus representing detailed cluster status.
  /// [storage] Storage configuration.
  /// [uid] The unique identifier of the bare metal admin cluster.
  /// [updateTime] The time at which this bare metal admin cluster was last updated.
  /// [validationCheck] ValidationCheck representing the result of the preflight check.
  const GetBareMetalAdminClusterResult({
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
    this.validationCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'validationCheck': ?validationCheck?.toMap(),
    };
  }

  factory GetBareMetalAdminClusterResult.fromMap(Map<String, dynamic> map) {
    return GetBareMetalAdminClusterResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      bareMetalVersion: (() { final guardedValue = map['bareMetalVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      binaryAuthorization: (() { final guardedValue = map['binaryAuthorization']; if (guardedValue == null) return null; return BinaryAuthorizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterOperations: (() { final guardedValue = map['clusterOperations']; if (guardedValue == null) return null; return BareMetalAdminClusterOperationsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      controlPlane: (() { final guardedValue = map['controlPlane']; if (guardedValue == null) return null; return BareMetalAdminControlPlaneConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fleet: (() { final guardedValue = map['fleet']; if (guardedValue == null) return null; return FleetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return BareMetalAdminLoadBalancerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      localName: (() { final guardedValue = map['localName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceConfig: (() { final guardedValue = map['maintenanceConfig']; if (guardedValue == null) return null; return BareMetalAdminMaintenanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maintenanceStatus: (() { final guardedValue = map['maintenanceStatus']; if (guardedValue == null) return null; return BareMetalAdminMaintenanceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return BareMetalAdminNetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeAccessConfig: (() { final guardedValue = map['nodeAccessConfig']; if (guardedValue == null) return null; return BareMetalAdminNodeAccessConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return BareMetalAdminWorkloadNodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osEnvironmentConfig: (() { final guardedValue = map['osEnvironmentConfig']; if (guardedValue == null) return null; return BareMetalAdminOsEnvironmentConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return BareMetalAdminProxyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      securityConfig: (() { final guardedValue = map['securityConfig']; if (guardedValue == null) return null; return BareMetalAdminSecurityConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return BareMetalAdminStorageConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationCheck: (() { final guardedValue = map['validationCheck']; if (guardedValue == null) return null; return ValidationCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
