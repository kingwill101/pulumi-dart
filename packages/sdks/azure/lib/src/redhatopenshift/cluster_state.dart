// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_api_server_profile.dart';
import 'cluster_cluster_profile.dart';
import 'cluster_ingress_profile.dart';
import 'cluster_main_profile.dart';
import 'cluster_network_profile.dart';
import 'cluster_service_principal.dart';
import 'cluster_worker_profile.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// An `api_server_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterApiServerProfile>? apiServerProfile;
  /// A `cluster_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterClusterProfile>? clusterProfile;
  /// The Red Hat OpenShift cluster console URL.
  final pulumi.Input<String>? consoleUrl;
  /// An `ingress_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterIngressProfile>? ingressProfile;
  /// The location where the Azure Red Hat OpenShift Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `main_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterMainProfile>? mainProfile;
  /// The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterNetworkProfile>? networkProfile;
  /// Specifies the Resource Group where the Azure Red Hat OpenShift Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `service_principal` block as defined below.
  final pulumi.Input<ClusterServicePrincipal>? servicePrincipal;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `worker_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ClusterWorkerProfile>? workerProfile;

  /// Creates a new [ClusterState].
  /// [apiServerProfile] An `api_server_profile` block as defined below. Changing this forces a new resource to be created.
  /// [clusterProfile] A `cluster_profile` block as defined below. Changing this forces a new resource to be created.
  /// [consoleUrl] The Red Hat OpenShift cluster console URL.
  /// [ingressProfile] An `ingress_profile` block as defined below. Changing this forces a new resource to be created.
  /// [location] The location where the Azure Red Hat OpenShift Cluster should be created. Changing this forces a new resource to be created.
  /// [mainProfile] A `main_profile` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  /// [networkProfile] A `network_profile` block as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Azure Red Hat OpenShift Cluster should exist. Changing this forces a new resource to be created.
  /// [servicePrincipal] A `service_principal` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workerProfile] A `worker_profile` block as defined below. Changing this forces a new resource to be created.
  ClusterState({
    this.apiServerProfile,
    this.clusterProfile,
    this.consoleUrl,
    this.ingressProfile,
    this.location,
    this.mainProfile,
    this.name,
    this.networkProfile,
    this.resourceGroupName,
    this.servicePrincipal,
    this.tags,
    this.workerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerProfile': ?pulumi.Input.mapOptionalInputValue<ClusterApiServerProfile, Map<String, dynamic>>(apiServerProfile, (value) => value.toMap()),
      'clusterProfile': ?pulumi.Input.mapOptionalInputValue<ClusterClusterProfile, Map<String, dynamic>>(clusterProfile, (value) => value.toMap()),
      'consoleUrl': ?consoleUrl,
      'ingressProfile': ?pulumi.Input.mapOptionalInputValue<ClusterIngressProfile, Map<String, dynamic>>(ingressProfile, (value) => value.toMap()),
      'location': ?location,
      'mainProfile': ?pulumi.Input.mapOptionalInputValue<ClusterMainProfile, Map<String, dynamic>>(mainProfile, (value) => value.toMap()),
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipal': ?pulumi.Input.mapOptionalInputValue<ClusterServicePrincipal, Map<String, dynamic>>(servicePrincipal, (value) => value.toMap()),
      'tags': ?tags,
      'workerProfile': ?pulumi.Input.mapOptionalInputValue<ClusterWorkerProfile, Map<String, dynamic>>(workerProfile, (value) => value.toMap()),
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      apiServerProfile: map['apiServerProfile'] == null ? null : (ClusterApiServerProfile.fromMap((map['apiServerProfile'] as Map).cast<String, dynamic>())).input(),
      clusterProfile: map['clusterProfile'] == null ? null : (ClusterClusterProfile.fromMap((map['clusterProfile'] as Map).cast<String, dynamic>())).input(),
      consoleUrl: map['consoleUrl'] == null ? null : (map['consoleUrl'] as String).input(),
      ingressProfile: map['ingressProfile'] == null ? null : (ClusterIngressProfile.fromMap((map['ingressProfile'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mainProfile: map['mainProfile'] == null ? null : (ClusterMainProfile.fromMap((map['mainProfile'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (ClusterNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      servicePrincipal: map['servicePrincipal'] == null ? null : (ClusterServicePrincipal.fromMap((map['servicePrincipal'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workerProfile: map['workerProfile'] == null ? null : (ClusterWorkerProfile.fromMap((map['workerProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

