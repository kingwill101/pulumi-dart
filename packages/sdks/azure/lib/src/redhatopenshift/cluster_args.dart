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
    required this.apiServerProfile,
    required this.clusterProfile,
    required this.ingressProfile,
    this.location,
    required this.mainProfile,
    this.name,
    required this.networkProfile,
    required this.resourceGroupName,
    required this.servicePrincipal,
    this.tags,
    required this.workerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerProfile':
          pulumi.Input.mapInputValue<
            ClusterApiServerProfile,
            Map<String, dynamic>
          >(apiServerProfile, (value) => value.toMap()),
      'clusterProfile':
          pulumi.Input.mapInputValue<
            ClusterClusterProfile,
            Map<String, dynamic>
          >(clusterProfile, (value) => value.toMap()),
      'ingressProfile':
          pulumi.Input.mapInputValue<
            ClusterIngressProfile,
            Map<String, dynamic>
          >(ingressProfile, (value) => value.toMap()),
      'location': ?location,
      'mainProfile':
          pulumi.Input.mapInputValue<ClusterMainProfile, Map<String, dynamic>>(
            mainProfile,
            (value) => value.toMap(),
          ),
      'name': ?name,
      'networkProfile':
          pulumi.Input.mapInputValue<
            ClusterNetworkProfile,
            Map<String, dynamic>
          >(networkProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'servicePrincipal':
          pulumi.Input.mapInputValue<
            ClusterServicePrincipal,
            Map<String, dynamic>
          >(servicePrincipal, (value) => value.toMap()),
      'tags': ?tags,
      'workerProfile':
          pulumi.Input.mapInputValue<
            ClusterWorkerProfile,
            Map<String, dynamic>
          >(workerProfile, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      apiServerProfile: pulumi.Input.fromValue(
        ClusterApiServerProfile.fromMap(
          (map['apiServerProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      clusterProfile: pulumi.Input.fromValue(
        ClusterClusterProfile.fromMap(
          (map['clusterProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      ingressProfile: pulumi.Input.fromValue(
        ClusterIngressProfile.fromMap(
          (map['ingressProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mainProfile: pulumi.Input.fromValue(
        ClusterMainProfile.fromMap(
          (map['mainProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkProfile: pulumi.Input.fromValue(
        ClusterNetworkProfile.fromMap(
          (map['networkProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      servicePrincipal: pulumi.Input.fromValue(
        ClusterServicePrincipal.fromMap(
          (map['servicePrincipal']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workerProfile: pulumi.Input.fromValue(
        ClusterWorkerProfile.fromMap(
          (map['workerProfile']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
