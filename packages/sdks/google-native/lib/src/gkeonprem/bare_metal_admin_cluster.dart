import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_args.dart';
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

/// Creates a new bare metal admin cluster in a given project and location. The API needs to be combined with creating a bootstrap cluster to work. See: https://cloud.google.com/anthos/clusters/docs/bare-metal/latest/installing/creating-clusters/create-admin-cluster-api#prepare_bootstrap_environment
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class BareMetalAdminCluster extends pulumi.CustomResource {
  /// Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final pulumi.Output<Map<String, String>> annotations;
  /// Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additionally restrict to lower-cased letters. This comes out roughly to: /^a-z+[a-z0-9]$/
  late final pulumi.Output<String> bareMetalAdminClusterId;
  /// The Anthos clusters on bare metal version for the bare metal admin cluster.
  late final pulumi.Output<String> bareMetalVersion;
  /// Binary Authorization related configurations.
  late final pulumi.Output<BinaryAuthorizationResponse> binaryAuthorization;
  /// Cluster operations configuration.
  late final pulumi.Output<BareMetalAdminClusterOperationsConfigResponse> clusterOperations;
  /// Control plane configuration.
  late final pulumi.Output<BareMetalAdminControlPlaneConfigResponse> controlPlane;
  /// The time at which this bare metal admin cluster was created.
  late final pulumi.Output<String> createTime;
  /// The time at which this bare metal admin cluster was deleted. If the resource is not deleted, this must be empty
  late final pulumi.Output<String> deleteTime;
  /// A human readable description of this bare metal admin cluster.
  late final pulumi.Output<String> description;
  /// The IP address name of bare metal admin cluster's API server.
  late final pulumi.Output<String> endpoint;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// Fleet configuration for the cluster.
  late final pulumi.Output<FleetResponse> fleet;
  /// Load balancer configuration.
  late final pulumi.Output<BareMetalAdminLoadBalancerConfigResponse> loadBalancer;
  /// The object name of the bare metal cluster custom resource. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  late final pulumi.Output<String> localName;
  late final pulumi.Output<String> location;
  /// Maintenance configuration.
  late final pulumi.Output<BareMetalAdminMaintenanceConfigResponse> maintenanceConfig;
  /// MaintenanceStatus representing state of maintenance.
  late final pulumi.Output<BareMetalAdminMaintenanceStatusResponse> maintenanceStatus;
  /// Immutable. The bare metal admin cluster resource name.
  late final pulumi.Output<String> name;
  /// Network configuration.
  late final pulumi.Output<BareMetalAdminNetworkConfigResponse> networkConfig;
  /// Node access related configurations.
  late final pulumi.Output<BareMetalAdminNodeAccessConfigResponse> nodeAccessConfig;
  /// Workload node configuration.
  late final pulumi.Output<BareMetalAdminWorkloadNodeConfigResponse> nodeConfig;
  /// OS environment related configurations.
  late final pulumi.Output<BareMetalAdminOsEnvironmentConfigResponse> osEnvironmentConfig;
  late final pulumi.Output<String> project;
  /// Proxy configuration.
  late final pulumi.Output<BareMetalAdminProxyConfigResponse> proxy;
  /// If set, there are currently changes in flight to the bare metal Admin Cluster.
  late final pulumi.Output<bool> reconciling;
  /// Security related configuration.
  late final pulumi.Output<BareMetalAdminSecurityConfigResponse> securityConfig;
  /// The current state of the bare metal admin cluster.
  late final pulumi.Output<String> state;
  /// ResourceStatus representing detailed cluster status.
  late final pulumi.Output<ResourceStatusResponse> status;
  /// Storage configuration.
  late final pulumi.Output<BareMetalAdminStorageConfigResponse> storage;
  /// The unique identifier of the bare metal admin cluster.
  late final pulumi.Output<String> uid;
  /// The time at which this bare metal admin cluster was last updated.
  late final pulumi.Output<String> updateTime;
  /// ValidationCheck representing the result of the preflight check.
  late final pulumi.Output<ValidationCheckResponse> validationCheck;

  /// Creates a new [BareMetalAdminCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalAdminCluster]. {@macro pulumi_gkeonprem_v1_bare_metal_admin_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalAdminCluster(
    String name, {
    BareMetalAdminClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:gkeonprem/v1:BareMetalAdminCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    bareMetalAdminClusterId = registerOutput<String>('bareMetalAdminClusterId');
    bareMetalVersion = registerOutput<String>('bareMetalVersion');
    binaryAuthorization = registerOutput<BinaryAuthorizationResponse>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BinaryAuthorizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterOperations = registerOutput<BareMetalAdminClusterOperationsConfigResponse>('clusterOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminClusterOperationsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlane = registerOutput<BareMetalAdminControlPlaneConfigResponse>('controlPlane', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminControlPlaneConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleet = registerOutput<FleetResponse>('fleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loadBalancer = registerOutput<BareMetalAdminLoadBalancerConfigResponse>('loadBalancer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminLoadBalancerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localName = registerOutput<String>('localName');
    location = registerOutput<String>('location');
    maintenanceConfig = registerOutput<BareMetalAdminMaintenanceConfigResponse>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminMaintenanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceStatus = registerOutput<BareMetalAdminMaintenanceStatusResponse>('maintenanceStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminMaintenanceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<BareMetalAdminNetworkConfigResponse>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminNetworkConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeAccessConfig = registerOutput<BareMetalAdminNodeAccessConfigResponse>('nodeAccessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminNodeAccessConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeConfig = registerOutput<BareMetalAdminWorkloadNodeConfigResponse>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminWorkloadNodeConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osEnvironmentConfig = registerOutput<BareMetalAdminOsEnvironmentConfigResponse>('osEnvironmentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminOsEnvironmentConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    proxy = registerOutput<BareMetalAdminProxyConfigResponse>('proxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminProxyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityConfig = registerOutput<BareMetalAdminSecurityConfigResponse>('securityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminSecurityConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    status = registerOutput<ResourceStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storage = registerOutput<BareMetalAdminStorageConfigResponse>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalAdminStorageConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    validationCheck = registerOutput<ValidationCheckResponse>('validationCheck', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ValidationCheckResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
