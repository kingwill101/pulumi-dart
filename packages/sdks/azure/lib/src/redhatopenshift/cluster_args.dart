// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_api_server_profile.dart';
import 'cluster_cluster_profile.dart';
import 'cluster_ingress_profile.dart';
import 'cluster_main_profile.dart';
import 'cluster_network_profile.dart';
import 'cluster_service_principal.dart';
import 'cluster_worker_profile.dart';

/// {@template pulumi_redhatopenshift_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_cluster_cluster_args_doc}
class ClusterArgs {
  /// An `api_server_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterApiServerProfile> apiServerProfile;
  /// A `cluster_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterClusterProfile> clusterProfile;
  /// An `ingress_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterIngressProfile> ingressProfile;
  /// The location where the Azure Red Hat OpenShift Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `main_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterMainProfile> mainProfile;
  /// The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterNetworkProfile> networkProfile;
  /// Specifies the Resource Group where the Azure Red Hat OpenShift Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `service_principal` block as defined below.
  final pulumi.Input<ClusterServicePrincipal> servicePrincipal;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `worker_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterWorkerProfile> workerProfile;

  /// Creates a new [ClusterArgs].
  /// [apiServerProfile] An `api_server_profile` block as defined below. Changing this forces a new resource to be created.
  /// [clusterProfile] A `cluster_profile` block as defined below. Changing this forces a new resource to be created.
  /// [ingressProfile] An `ingress_profile` block as defined below. Changing this forces a new resource to be created.
  /// [location] The location where the Azure Red Hat OpenShift Cluster should be created. Changing this forces a new resource to be created.
  /// [mainProfile] A `main_profile` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  /// [networkProfile] A `network_profile` block as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Azure Red Hat OpenShift Cluster should exist. Changing this forces a new resource to be created.
  /// [servicePrincipal] A `service_principal` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workerProfile] A `worker_profile` block as defined below. Changing this forces a new resource to be created.
  ClusterArgs({
    required pulumi.Output<ClusterApiServerProfile> apiServerProfile,
    required pulumi.Output<ClusterClusterProfile> clusterProfile,
    required pulumi.Output<ClusterIngressProfile> ingressProfile,
    pulumi.Output<String>? location,
    required pulumi.Output<ClusterMainProfile> mainProfile,
    pulumi.Output<String>? name,
    required pulumi.Output<ClusterNetworkProfile> networkProfile,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<ClusterServicePrincipal> servicePrincipal,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<ClusterWorkerProfile> workerProfile,
  }) :
      apiServerProfile = pulumi.Input.asInput<ClusterApiServerProfile>(apiServerProfile),
      clusterProfile = pulumi.Input.asInput<ClusterClusterProfile>(clusterProfile),
      ingressProfile = pulumi.Input.asInput<ClusterIngressProfile>(ingressProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      mainProfile = pulumi.Input.asInput<ClusterMainProfile>(mainProfile),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asInput<ClusterNetworkProfile>(networkProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      servicePrincipal = pulumi.Input.asInput<ClusterServicePrincipal>(servicePrincipal),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workerProfile = pulumi.Input.asInput<ClusterWorkerProfile>(workerProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerProfile': pulumi.Input.mapInputValue<ClusterApiServerProfile, Map<String, dynamic>>(apiServerProfile, (value) => value.toMap()),
      'clusterProfile': pulumi.Input.mapInputValue<ClusterClusterProfile, Map<String, dynamic>>(clusterProfile, (value) => value.toMap()),
      'ingressProfile': pulumi.Input.mapInputValue<ClusterIngressProfile, Map<String, dynamic>>(ingressProfile, (value) => value.toMap()),
      'location': ?location,
      'mainProfile': pulumi.Input.mapInputValue<ClusterMainProfile, Map<String, dynamic>>(mainProfile, (value) => value.toMap()),
      'name': ?name,
      'networkProfile': pulumi.Input.mapInputValue<ClusterNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'servicePrincipal': pulumi.Input.mapInputValue<ClusterServicePrincipal, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'tags': ?tags,
      'workerProfile': pulumi.Input.mapInputValue<ClusterWorkerProfile, Map<String, dynamic>>(workerProfile, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      apiServerProfile: pulumi.Output.create<ClusterApiServerProfile>(ClusterApiServerProfile.fromMap((map['apiServerProfile'] as Map).cast<String, dynamic>())),
      clusterProfile: pulumi.Output.create<ClusterClusterProfile>(ClusterClusterProfile.fromMap((map['clusterProfile'] as Map).cast<String, dynamic>())),
      ingressProfile: pulumi.Output.create<ClusterIngressProfile>(ClusterIngressProfile.fromMap((map['ingressProfile'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mainProfile: pulumi.Output.create<ClusterMainProfile>(ClusterMainProfile.fromMap((map['mainProfile'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: pulumi.Output.create<ClusterNetworkProfile>(ClusterNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servicePrincipal: pulumi.Output.create<ClusterServicePrincipal>(ClusterServicePrincipal.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workerProfile: pulumi.Output.create<ClusterWorkerProfile>(ClusterWorkerProfile.fromMap((map['workerProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

