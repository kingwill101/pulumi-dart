// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_anti_affinity_groups.dart';
import 'vmware_cluster_authorization.dart';
import 'vmware_cluster_auto_repair_config.dart';
import 'vmware_cluster_control_plane_node.dart';
import 'vmware_cluster_dataplane_v2.dart';
import 'vmware_cluster_fleet.dart';
import 'vmware_cluster_load_balancer.dart';
import 'vmware_cluster_network_config.dart';
import 'vmware_cluster_status.dart';
import 'vmware_cluster_storage.dart';
import 'vmware_cluster_upgrade_policy.dart';
import 'vmware_cluster_validation_check.dart';
import 'vmware_cluster_vcenter.dart';

/// Input properties used for looking up and filtering VMwareCluster resources.
class VMwareClusterState {
  /// The admin cluster this VMware User Cluster belongs to.
  /// This is the full resource name of the admin cluster's hub membership.
  /// In the future, references to other resource types might be allowed if
  /// admin clusters are modeled as their own resources.
  final pulumi.Input<String>? adminClusterMembership;
  /// Annotations on the VMware User Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterAntiAffinityGroups>? antiAffinityGroups;
  /// RBAC policy that will be applied and managed by GKE On-Prem.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterAuthorization>? authorization;
  /// Configuration for auto repairing.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterAutoRepairConfig>? autoRepairConfig;
  /// VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterControlPlaneNode>? controlPlaneNode;
  /// The time at which VMware User Cluster was created.
  final pulumi.Input<String>? createTime;
  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterDataplaneV2>? dataplaneV2;
  /// The time at which VMware User Cluster was deleted.
  final pulumi.Input<String>? deleteTime;
  /// A human readable description of this VMware User Cluster.
  final pulumi.Input<String>? description;
  /// Disable bundled ingress.
  final pulumi.Input<bool>? disableBundledIngress;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Enable advanced cluster. Default to false.
  final pulumi.Input<bool>? enableAdvancedCluster;
  /// Enable control plane V2. Default to false.
  final pulumi.Input<bool>? enableControlPlaneV2;
  /// The DNS name of VMware User Cluster's API server.
  final pulumi.Input<String>? endpoint;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// Fleet configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterFleet>>? fleets;
  /// Load Balancer configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterLoadBalancer>? loadBalancer;
  /// The object name of the VMware OnPremUserCluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  final pulumi.Input<String>? localName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The VMware cluster name.
  final pulumi.Input<String>? name;
  /// The VMware User Cluster network configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterNetworkConfig>? networkConfig;
  /// The Anthos clusters on the VMware version for your user cluster.
  final pulumi.Input<String>? onPremVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If set, there are currently changes in flight to the VMware User Cluster.
  final pulumi.Input<bool>? reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterStatus>>? statuses;
  /// Storage configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterStorage>? storage;
  /// The unique identifier of the VMware User Cluster.
  final pulumi.Input<String>? uid;
  /// The time at which VMware User Cluster was last updated.
  final pulumi.Input<String>? updateTime;
  /// Specifies upgrade policy for the cluster.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterUpgradePolicy>? upgradePolicy;
  /// ValidationCheck represents the result of the preflight check job.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterValidationCheck>>? validationChecks;
  /// VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// Inherited from the admin cluster.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterVcenter>? vcenter;
  /// Enable VM tracking.
  final pulumi.Input<bool>? vmTrackingEnabled;

  /// Creates a new [VMwareClusterState].
  /// [adminClusterMembership] The admin cluster this VMware User Cluster belongs to.
  /// [annotations] Annotations on the VMware User Cluster.
  /// [antiAffinityGroups] AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// [authorization] RBAC policy that will be applied and managed by GKE On-Prem.
  /// [autoRepairConfig] Configuration for auto repairing.
  /// [controlPlaneNode] VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// [createTime] The time at which VMware User Cluster was created.
  /// [dataplaneV2] VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// [deleteTime] The time at which VMware User Cluster was deleted.
  /// [description] A human readable description of this VMware User Cluster.
  /// [disableBundledIngress] Disable bundled ingress.
  /// [effectiveAnnotations] Optional.
  /// [enableAdvancedCluster] Enable advanced cluster. Default to false.
  /// [enableControlPlaneV2] Enable control plane V2. Default to false.
  /// [endpoint] The DNS name of VMware User Cluster's API server.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [fleets] Fleet configuration for the cluster.
  /// [loadBalancer] Load Balancer configuration.
  /// [localName] The object name of the VMware OnPremUserCluster custom resource on the
  /// [location] The location of the resource.
  /// [name] The VMware cluster name.
  /// [networkConfig] The VMware User Cluster network configuration.
  /// [onPremVersion] The Anthos clusters on the VMware version for your user cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [reconciling] If set, there are currently changes in flight to the VMware User Cluster.
  /// [state] (Output)
  /// [statuses] (Output)
  /// [storage] Storage configuration.
  /// [uid] The unique identifier of the VMware User Cluster.
  /// [updateTime] The time at which VMware User Cluster was last updated.
  /// [upgradePolicy] Specifies upgrade policy for the cluster.
  /// [validationChecks] ValidationCheck represents the result of the preflight check job.
  /// [vcenter] VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// [vmTrackingEnabled] Enable VM tracking.
  VMwareClusterState({
    pulumi.Output<String>? adminClusterMembership,
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<VMwareClusterAntiAffinityGroups>? antiAffinityGroups,
    pulumi.Output<VMwareClusterAuthorization>? authorization,
    pulumi.Output<VMwareClusterAutoRepairConfig>? autoRepairConfig,
    pulumi.Output<VMwareClusterControlPlaneNode>? controlPlaneNode,
    pulumi.Output<String>? createTime,
    pulumi.Output<VMwareClusterDataplaneV2>? dataplaneV2,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableBundledIngress,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<bool>? enableAdvancedCluster,
    pulumi.Output<bool>? enableControlPlaneV2,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<List<VMwareClusterFleet>>? fleets,
    pulumi.Output<VMwareClusterLoadBalancer>? loadBalancer,
    pulumi.Output<String>? localName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<VMwareClusterNetworkConfig>? networkConfig,
    pulumi.Output<String>? onPremVersion,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<List<VMwareClusterStatus>>? statuses,
    pulumi.Output<VMwareClusterStorage>? storage,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<VMwareClusterUpgradePolicy>? upgradePolicy,
    pulumi.Output<List<VMwareClusterValidationCheck>>? validationChecks,
    pulumi.Output<VMwareClusterVcenter>? vcenter,
    pulumi.Output<bool>? vmTrackingEnabled,
  }) :
      adminClusterMembership = pulumi.Input.asOptionalInput<String>(adminClusterMembership),
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      antiAffinityGroups = pulumi.Input.asOptionalInput<VMwareClusterAntiAffinityGroups>(antiAffinityGroups),
      authorization = pulumi.Input.asOptionalInput<VMwareClusterAuthorization>(authorization),
      autoRepairConfig = pulumi.Input.asOptionalInput<VMwareClusterAutoRepairConfig>(autoRepairConfig),
      controlPlaneNode = pulumi.Input.asOptionalInput<VMwareClusterControlPlaneNode>(controlPlaneNode),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataplaneV2 = pulumi.Input.asOptionalInput<VMwareClusterDataplaneV2>(dataplaneV2),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableBundledIngress = pulumi.Input.asOptionalInput<bool>(disableBundledIngress),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      enableAdvancedCluster = pulumi.Input.asOptionalInput<bool>(enableAdvancedCluster),
      enableControlPlaneV2 = pulumi.Input.asOptionalInput<bool>(enableControlPlaneV2),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleets = pulumi.Input.asOptionalInput<List<VMwareClusterFleet>>(fleets),
      loadBalancer = pulumi.Input.asOptionalInput<VMwareClusterLoadBalancer>(loadBalancer),
      localName = pulumi.Input.asOptionalInput<String>(localName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<VMwareClusterNetworkConfig>(networkConfig),
      onPremVersion = pulumi.Input.asOptionalInput<String>(onPremVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<VMwareClusterStatus>>(statuses),
      storage = pulumi.Input.asOptionalInput<VMwareClusterStorage>(storage),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      upgradePolicy = pulumi.Input.asOptionalInput<VMwareClusterUpgradePolicy>(upgradePolicy),
      validationChecks = pulumi.Input.asOptionalInput<List<VMwareClusterValidationCheck>>(validationChecks),
      vcenter = pulumi.Input.asOptionalInput<VMwareClusterVcenter>(vcenter),
      vmTrackingEnabled = pulumi.Input.asOptionalInput<bool>(vmTrackingEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminClusterMembership': ?adminClusterMembership,
      'annotations': ?annotations,
      'antiAffinityGroups': ?pulumi.Input.mapOptionalInputValue<VMwareClusterAntiAffinityGroups, Map<String, dynamic>>(antiAffinityGroups, (value) => value.toMap()),
      'authorization': ?pulumi.Input.mapOptionalInputValue<VMwareClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'autoRepairConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterAutoRepairConfig, Map<String, dynamic>>(autoRepairConfig, (value) => value.toMap()),
      'controlPlaneNode': ?pulumi.Input.mapOptionalInputValue<VMwareClusterControlPlaneNode, Map<String, dynamic>>(controlPlaneNode, (value) => value.toMap()),
      'createTime': ?createTime,
      'dataplaneV2': ?pulumi.Input.mapOptionalInputValue<VMwareClusterDataplaneV2, Map<String, dynamic>>(dataplaneV2, (value) => value.toMap()),
      'deleteTime': ?deleteTime,
      'description': ?description,
      'disableBundledIngress': ?disableBundledIngress,
      'effectiveAnnotations': ?effectiveAnnotations,
      'enableAdvancedCluster': ?enableAdvancedCluster,
      'enableControlPlaneV2': ?enableControlPlaneV2,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleets': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterFleet>, List<Map<String, dynamic>>>(fleets, (value) => pulumi.Input.encodeList<VMwareClusterFleet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<VMwareClusterLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'localName': ?localName,
      'location': ?location,
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'onPremVersion': ?onPremVersion,
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<VMwareClusterStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storage': ?pulumi.Input.mapOptionalInputValue<VMwareClusterStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<VMwareClusterUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'validationChecks': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterValidationCheck>, List<Map<String, dynamic>>>(validationChecks, (value) => pulumi.Input.encodeList<VMwareClusterValidationCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcenter': ?pulumi.Input.mapOptionalInputValue<VMwareClusterVcenter, Map<String, dynamic>>(vcenter, (value) => value.toMap()),
      'vmTrackingEnabled': ?vmTrackingEnabled,
    };
  }

  factory VMwareClusterState.fromMap(Map<String, dynamic> map) {
    return VMwareClusterState(
      adminClusterMembership: map['adminClusterMembership'] == null ? null : pulumi.Output.create<String>(map['adminClusterMembership'] as String),
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      antiAffinityGroups: map['antiAffinityGroups'] == null ? null : pulumi.Output.create<VMwareClusterAntiAffinityGroups>(VMwareClusterAntiAffinityGroups.fromMap((map['antiAffinityGroups'] as Map).cast<String, dynamic>())),
      authorization: map['authorization'] == null ? null : pulumi.Output.create<VMwareClusterAuthorization>(VMwareClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      autoRepairConfig: map['autoRepairConfig'] == null ? null : pulumi.Output.create<VMwareClusterAutoRepairConfig>(VMwareClusterAutoRepairConfig.fromMap((map['autoRepairConfig'] as Map).cast<String, dynamic>())),
      controlPlaneNode: map['controlPlaneNode'] == null ? null : pulumi.Output.create<VMwareClusterControlPlaneNode>(VMwareClusterControlPlaneNode.fromMap((map['controlPlaneNode'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataplaneV2: map['dataplaneV2'] == null ? null : pulumi.Output.create<VMwareClusterDataplaneV2>(VMwareClusterDataplaneV2.fromMap((map['dataplaneV2'] as Map).cast<String, dynamic>())),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableBundledIngress: map['disableBundledIngress'] == null ? null : pulumi.Output.create<bool>(map['disableBundledIngress'] as bool),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      enableAdvancedCluster: map['enableAdvancedCluster'] == null ? null : pulumi.Output.create<bool>(map['enableAdvancedCluster'] as bool),
      enableControlPlaneV2: map['enableControlPlaneV2'] == null ? null : pulumi.Output.create<bool>(map['enableControlPlaneV2'] as bool),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleets: map['fleets'] == null ? null : pulumi.Output.create<List<VMwareClusterFleet>>(pulumi.Input.decodeList<VMwareClusterFleet>(map['fleets'], (value) => VMwareClusterFleet.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<VMwareClusterLoadBalancer>(VMwareClusterLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())),
      localName: map['localName'] == null ? null : pulumi.Output.create<String>(map['localName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<VMwareClusterNetworkConfig>(VMwareClusterNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      onPremVersion: map['onPremVersion'] == null ? null : pulumi.Output.create<String>(map['onPremVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<VMwareClusterStatus>>(pulumi.Input.decodeList<VMwareClusterStatus>(map['statuses'], (value) => VMwareClusterStatus.fromMap((value as Map).cast<String, dynamic>()))),
      storage: map['storage'] == null ? null : pulumi.Output.create<VMwareClusterStorage>(VMwareClusterStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      upgradePolicy: map['upgradePolicy'] == null ? null : pulumi.Output.create<VMwareClusterUpgradePolicy>(VMwareClusterUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>())),
      validationChecks: map['validationChecks'] == null ? null : pulumi.Output.create<List<VMwareClusterValidationCheck>>(pulumi.Input.decodeList<VMwareClusterValidationCheck>(map['validationChecks'], (value) => VMwareClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>()))),
      vcenter: map['vcenter'] == null ? null : pulumi.Output.create<VMwareClusterVcenter>(VMwareClusterVcenter.fromMap((map['vcenter'] as Map).cast<String, dynamic>())),
      vmTrackingEnabled: map['vmTrackingEnabled'] == null ? null : pulumi.Output.create<bool>(map['vmTrackingEnabled'] as bool),
    );
  }
}

