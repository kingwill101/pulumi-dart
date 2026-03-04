import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_response.dart';
import 'fleet_response.dart';
import 'resource_status_response.dart';
import 'validation_check_response.dart';
import 'vmware_aagconfig_response.dart';
import 'vmware_auto_repair_config_response.dart';
import 'vmware_cluster_args.dart';
import 'vmware_cluster_upgrade_policy_response.dart';
import 'vmware_control_plane_node_config_response.dart';
import 'vmware_dataplane_v2_config_response.dart';
import 'vmware_load_balancer_config_response.dart';
import 'vmware_network_config_response.dart';
import 'vmware_storage_config_response.dart';
import 'vmware_vcenter_config_response.dart';

/// Creates a new VMware user cluster in a given project and location.
class VmwareCluster extends pulumi.CustomResource {
  /// The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  late final pulumi.Output<String> adminClusterMembership;

  /// The resource name of the VMware admin cluster hosting this user cluster.
  late final pulumi.Output<String> adminClusterName;

  /// Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final pulumi.Output<Map<String, String>> annotations;

  /// AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  late final pulumi.Output<VmwareAAGConfigResponse> antiAffinityGroups;

  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  late final pulumi.Output<AuthorizationResponse> authorization;

  /// Configuration for auto repairing.
  late final pulumi.Output<VmwareAutoRepairConfigResponse> autoRepairConfig;

  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  late final pulumi.Output<VmwareControlPlaneNodeConfigResponse>
  controlPlaneNode;

  /// The time at which VMware user cluster was created.
  late final pulumi.Output<String> createTime;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  late final pulumi.Output<VmwareDataplaneV2ConfigResponse> dataplaneV2;

  /// The time at which VMware user cluster was deleted.
  late final pulumi.Output<String> deleteTime;

  /// A human readable description of this VMware user cluster.
  late final pulumi.Output<String> description;

  /// Disable bundled ingress.
  late final pulumi.Output<bool> disableBundledIngress;

  /// Enable control plane V2. Default to false.
  late final pulumi.Output<bool> enableControlPlaneV2;

  /// The DNS name of VMware user cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  late final pulumi.Output<String> etag;

  /// Fleet configuration for the cluster.
  late final pulumi.Output<FleetResponse> fleet;

  /// Load balancer configuration.
  late final pulumi.Output<VmwareLoadBalancerConfigResponse> loadBalancer;

  /// The object name of the VMware OnPremUserCluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  late final pulumi.Output<String> localName;
  late final pulumi.Output<String> location;

  /// Immutable. The VMware user cluster resource name.
  late final pulumi.Output<String> name;

  /// The VMware user cluster network configuration.
  late final pulumi.Output<VmwareNetworkConfigResponse> networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  late final pulumi.Output<String> onPremVersion;
  late final pulumi.Output<String> project;

  /// If set, there are currently changes in flight to the VMware user cluster.
  late final pulumi.Output<bool> reconciling;

  /// The current state of VMware user cluster.
  late final pulumi.Output<String> state;

  /// ResourceStatus representing detailed cluster state.
  late final pulumi.Output<ResourceStatusResponse> status;

  /// Storage configuration.
  late final pulumi.Output<VmwareStorageConfigResponse> storage;

  /// The unique identifier of the VMware user cluster.
  late final pulumi.Output<String> uid;

  /// The time at which VMware user cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// Specifies upgrade policy for the cluster.
  late final pulumi.Output<VmwareClusterUpgradePolicyResponse> upgradePolicy;

  /// ValidationCheck represents the result of the preflight check job.
  late final pulumi.Output<ValidationCheckResponse> validationCheck;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  late final pulumi.Output<VmwareVCenterConfigResponse> vcenter;

  /// Enable VM tracking.
  late final pulumi.Output<bool> vmTrackingEnabled;

  /// User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format.
  late final pulumi.Output<String?> vmwareClusterId;

  /// Creates a new [VmwareCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VmwareCluster]. {@macro pulumi_gkeonprem_v1_vmware_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VmwareCluster(
    String name, {
    VmwareClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkeonprem/v1:VmwareCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminClusterMembership = registerOutput<String>('adminClusterMembership');
    adminClusterName = registerOutput<String>('adminClusterName');
    annotations = registerOutput<Map<String, String>>('annotations');
    antiAffinityGroups = registerOutput<VmwareAAGConfigResponse>(
      'antiAffinityGroups',
    );
    authorization = registerOutput<AuthorizationResponse>('authorization');
    autoRepairConfig = registerOutput<VmwareAutoRepairConfigResponse>(
      'autoRepairConfig',
    );
    controlPlaneNode = registerOutput<VmwareControlPlaneNodeConfigResponse>(
      'controlPlaneNode',
    );
    createTime = registerOutput<String>('createTime');
    dataplaneV2 = registerOutput<VmwareDataplaneV2ConfigResponse>(
      'dataplaneV2',
    );
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    disableBundledIngress = registerOutput<bool>('disableBundledIngress');
    enableControlPlaneV2 = registerOutput<bool>('enableControlPlaneV2');
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleet = registerOutput<FleetResponse>('fleet');
    loadBalancer = registerOutput<VmwareLoadBalancerConfigResponse>(
      'loadBalancer',
    );
    localName = registerOutput<String>('localName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<VmwareNetworkConfigResponse>(
      'networkConfig',
    );
    onPremVersion = registerOutput<String>('onPremVersion');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    status = registerOutput<ResourceStatusResponse>('status');
    storage = registerOutput<VmwareStorageConfigResponse>('storage');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    upgradePolicy = registerOutput<VmwareClusterUpgradePolicyResponse>(
      'upgradePolicy',
    );
    validationCheck = registerOutput<ValidationCheckResponse>(
      'validationCheck',
    );
    vcenter = registerOutput<VmwareVCenterConfigResponse>('vcenter');
    vmTrackingEnabled = registerOutput<bool>('vmTrackingEnabled');
    vmwareClusterId = registerOutput<String?>('vmwareClusterId');
  }
}
