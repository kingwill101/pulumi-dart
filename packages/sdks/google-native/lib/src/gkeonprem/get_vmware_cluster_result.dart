// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_response.dart';
import 'fleet_response.dart';
import 'resource_status_response.dart';
import 'validation_check_response.dart';
import 'vmware_aagconfig_response.dart';
import 'vmware_auto_repair_config_response.dart';
import 'vmware_cluster_upgrade_policy_response.dart';
import 'vmware_control_plane_node_config_response.dart';
import 'vmware_dataplane_v2_config_response.dart';
import 'vmware_load_balancer_config_response.dart';
import 'vmware_network_config_response.dart';
import 'vmware_storage_config_response.dart';
import 'vmware_vcenter_config_response.dart';

/// Result data returned by getVmwareCluster.
class GetVmwareClusterResult {
  /// The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  final String adminClusterMembership;

  /// The resource name of the VMware admin cluster hosting this user cluster.
  final String adminClusterName;

  /// Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final Map<String, String> annotations;

  /// AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  final VmwareAAGConfigResponse antiAffinityGroups;

  /// RBAC policy that will be applied and managed by the Anthos On-Prem API.
  final AuthorizationResponse authorization;

  /// Configuration for auto repairing.
  final VmwareAutoRepairConfigResponse autoRepairConfig;

  /// VMware user cluster control plane nodes must have either 1 or 3 replicas.
  final VmwareControlPlaneNodeConfigResponse controlPlaneNode;

  /// The time at which VMware user cluster was created.
  final String createTime;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  final VmwareDataplaneV2ConfigResponse dataplaneV2;

  /// The time at which VMware user cluster was deleted.
  final String deleteTime;

  /// A human readable description of this VMware user cluster.
  final String description;

  /// Disable bundled ingress.
  final bool disableBundledIngress;

  /// Enable control plane V2. Default to false.
  final bool enableControlPlaneV2;

  /// The DNS name of VMware user cluster's API server.
  final String endpoint;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final String etag;

  /// Fleet configuration for the cluster.
  final FleetResponse fleet;

  /// Load balancer configuration.
  final VmwareLoadBalancerConfigResponse loadBalancer;

  /// The object name of the VMware OnPremUserCluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  final String localName;

  /// Immutable. The VMware user cluster resource name.
  final String name;

  /// The VMware user cluster network configuration.
  final VmwareNetworkConfigResponse networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  final String onPremVersion;

  /// If set, there are currently changes in flight to the VMware user cluster.
  final bool reconciling;

  /// The current state of VMware user cluster.
  final String state;

  /// ResourceStatus representing detailed cluster state.
  final ResourceStatusResponse status;

  /// Storage configuration.
  final VmwareStorageConfigResponse storage;

  /// The unique identifier of the VMware user cluster.
  final String uid;

  /// The time at which VMware user cluster was last updated.
  final String updateTime;

  /// Specifies upgrade policy for the cluster.
  final VmwareClusterUpgradePolicyResponse upgradePolicy;

  /// ValidationCheck represents the result of the preflight check job.
  final ValidationCheckResponse validationCheck;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  final VmwareVCenterConfigResponse vcenter;

  /// Enable VM tracking.
  final bool vmTrackingEnabled;

  /// Creates a new [GetVmwareClusterResult].
  /// [adminClusterMembership] The admin cluster this VMware user cluster belongs to. This is the full resource name of the admin cluster's fleet membership. In the future, references to other resource types might be allowed if admin clusters are modeled as their own resources.
  /// [adminClusterName] The resource name of the VMware admin cluster hosting this user cluster.
  /// [annotations] Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical hosts in the datacenter.
  /// [authorization] RBAC policy that will be applied and managed by the Anthos On-Prem API.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [controlPlaneNode] VMware user cluster control plane nodes must have either 1 or 3 replicas.
  /// [createTime] The time at which VMware user cluster was created.
  /// [dataplaneV2] VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// [deleteTime] The time at which VMware user cluster was deleted.
  /// [description] A human readable description of this VMware user cluster.
  /// [disableBundledIngress] Disable bundled ingress.
  /// [enableControlPlaneV2] Enable control plane V2. Default to false.
  /// [endpoint] The DNS name of VMware user cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [fleet] Fleet configuration for the cluster.
  /// [loadBalancer] Load balancer configuration.
  /// [localName] The object name of the VMware OnPremUserCluster custom resource on the associated admin cluster. This field is used to support conflicting names when enrolling existing clusters to the API. When used as a part of cluster enrollment, this field will differ from the ID in the resource name. For new clusters, this field will match the user provided cluster name and be visible in the last component of the resource name. It is not modifiable. All users should use this name to access their cluster using gkectl or kubectl and should expect to see the local name when viewing admin cluster controller logs.
  /// [name] Immutable. The VMware user cluster resource name.
  /// [networkConfig] The VMware user cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for your user cluster.
  /// [reconciling] If set, there are currently changes in flight to the VMware user cluster.
  /// [state] The current state of VMware user cluster.
  /// [status] ResourceStatus representing detailed cluster state.
  /// [storage] Storage configuration.
  /// [uid] The unique identifier of the VMware user cluster.
  /// [updateTime] The time at which VMware user cluster was last updated.
  /// [upgradePolicy] Specifies upgrade policy for the cluster.
  /// [validationCheck] ValidationCheck represents the result of the preflight check job.
  /// [vcenter] VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherited from the admin cluster.
  /// [vmTrackingEnabled] Enable VM tracking.
  GetVmwareClusterResult({
    required this.adminClusterMembership,
    required this.adminClusterName,
    required this.annotations,
    required this.antiAffinityGroups,
    required this.authorization,
    required this.autoRepairConfig,
    required this.controlPlaneNode,
    required this.createTime,
    required this.dataplaneV2,
    required this.deleteTime,
    required this.description,
    required this.disableBundledIngress,
    required this.enableControlPlaneV2,
    required this.endpoint,
    required this.etag,
    required this.fleet,
    required this.loadBalancer,
    required this.localName,
    required this.name,
    required this.networkConfig,
    required this.onPremVersion,
    required this.reconciling,
    required this.state,
    required this.status,
    required this.storage,
    required this.uid,
    required this.updateTime,
    required this.upgradePolicy,
    required this.validationCheck,
    required this.vcenter,
    required this.vmTrackingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': adminClusterMembership,
      'adminClusterName': adminClusterName,
      'annotations': annotations,
      'antiAffinityGroups': antiAffinityGroups.toMap(),
      'authorization': authorization.toMap(),
      'autoRepairConfig': autoRepairConfig.toMap(),
      'controlPlaneNode': controlPlaneNode.toMap(),
      'createTime': createTime,
      'dataplaneV2': dataplaneV2.toMap(),
      'deleteTime': deleteTime,
      'description': description,
      'disableBundledIngress': disableBundledIngress,
      'enableControlPlaneV2': enableControlPlaneV2,
      'endpoint': endpoint,
      'etag': etag,
      'fleet': fleet.toMap(),
      'loadBalancer': loadBalancer.toMap(),
      'localName': localName,
      'name': name,
      'networkConfig': networkConfig.toMap(),
      'onPremVersion': onPremVersion,
      'reconciling': reconciling,
      'state': state,
      'status': status.toMap(),
      'storage': storage.toMap(),
      'uid': uid,
      'updateTime': updateTime,
      'upgradePolicy': upgradePolicy.toMap(),
      'validationCheck': validationCheck.toMap(),
      'vcenter': vcenter.toMap(),
      'vmTrackingEnabled': vmTrackingEnabled,
    };
  }

  factory GetVmwareClusterResult.fromMap(Map<String, dynamic> map) {
    return GetVmwareClusterResult(
      adminClusterMembership: map['adminClusterMembership'] as String,
      adminClusterName: map['adminClusterName'] as String,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      antiAffinityGroups: VmwareAAGConfigResponse.fromMap(
        (map['antiAffinityGroups']! as Map).cast<String, dynamic>(),
      ),
      authorization: AuthorizationResponse.fromMap(
        (map['authorization']! as Map).cast<String, dynamic>(),
      ),
      autoRepairConfig: VmwareAutoRepairConfigResponse.fromMap(
        (map['autoRepairConfig']! as Map).cast<String, dynamic>(),
      ),
      controlPlaneNode: VmwareControlPlaneNodeConfigResponse.fromMap(
        (map['controlPlaneNode']! as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      dataplaneV2: VmwareDataplaneV2ConfigResponse.fromMap(
        (map['dataplaneV2']! as Map).cast<String, dynamic>(),
      ),
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      disableBundledIngress: map['disableBundledIngress'] as bool,
      enableControlPlaneV2: map['enableControlPlaneV2'] as bool,
      endpoint: map['endpoint'] as String,
      etag: map['etag'] as String,
      fleet: FleetResponse.fromMap(
        (map['fleet']! as Map).cast<String, dynamic>(),
      ),
      loadBalancer: VmwareLoadBalancerConfigResponse.fromMap(
        (map['loadBalancer']! as Map).cast<String, dynamic>(),
      ),
      localName: map['localName'] as String,
      name: map['name'] as String,
      networkConfig: VmwareNetworkConfigResponse.fromMap(
        (map['networkConfig']! as Map).cast<String, dynamic>(),
      ),
      onPremVersion: map['onPremVersion'] as String,
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      status: ResourceStatusResponse.fromMap(
        (map['status']! as Map).cast<String, dynamic>(),
      ),
      storage: VmwareStorageConfigResponse.fromMap(
        (map['storage']! as Map).cast<String, dynamic>(),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      upgradePolicy: VmwareClusterUpgradePolicyResponse.fromMap(
        (map['upgradePolicy']! as Map).cast<String, dynamic>(),
      ),
      validationCheck: ValidationCheckResponse.fromMap(
        (map['validationCheck']! as Map).cast<String, dynamic>(),
      ),
      vcenter: VmwareVCenterConfigResponse.fromMap(
        (map['vcenter']! as Map).cast<String, dynamic>(),
      ),
      vmTrackingEnabled: map['vmTrackingEnabled'] as bool,
    );
  }
}
