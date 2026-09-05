// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_api_server_access.dart';
import 'automatic_cluster_hosted_system.dart';
import 'automatic_cluster_identity.dart';
import 'automatic_cluster_private_cluster.dart';
import 'automatic_cluster_service_mesh.dart';
import 'automatic_cluster_web_app_routing_ingress.dart';

/// {@template pulumi_containerservice_automatic_cluster_automatic_cluster_args_doc}
/// The set of arguments for AutomaticCluster.
/// {@endtemplate}
/// {@macro pulumi_containerservice_automatic_cluster_automatic_cluster_args_doc}
class AutomaticClusterArgs {
  /// An `apiServerAccess` block as defined below.
  final pulumi.Input<AutomaticClusterApiServerAccess?>? apiServerAccess;
  /// A `hostedSystem` block as defined below.
  final pulumi.Input<AutomaticClusterHostedSystem?>? hostedSystem;
  /// An `identity` block as defined below.
  final pulumi.Input<AutomaticClusterIdentity> identity;
  /// The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `privateCluster` block as defined below.
  final pulumi.Input<AutomaticClusterPrivateCluster?>? privateCluster;
  /// Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serviceMesh` block as defined below.
  final pulumi.Input<AutomaticClusterServiceMesh?>? serviceMesh;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A `webAppRoutingIngress` block as defined below.
  final pulumi.Input<AutomaticClusterWebAppRoutingIngress?>? webAppRoutingIngress;

  /// Creates a new [AutomaticClusterArgs].
  /// [apiServerAccess] An `apiServerAccess` block as defined below.
  /// [hostedSystem] A `hostedSystem` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  /// [name] The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  /// [privateCluster] A `privateCluster` block as defined below.
  /// [resourceGroupName] Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  /// [serviceMesh] A `serviceMesh` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [webAppRoutingIngress] A `webAppRoutingIngress` block as defined below.
  const AutomaticClusterArgs({
    this.apiServerAccess,
    this.hostedSystem,
    required this.identity,
    this.location,
    this.name,
    this.privateCluster,
    required this.resourceGroupName,
    this.serviceMesh,
    this.tags,
    this.webAppRoutingIngress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerAccess': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterApiServerAccess, Map<String, dynamic>>(apiServerAccess, (value) => value.toMap()),
      'hostedSystem': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterHostedSystem, Map<String, dynamic>>(hostedSystem, (value) => value.toMap()),
      'identity': pulumi.Input.mapInputValue<AutomaticClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'privateCluster': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterPrivateCluster, Map<String, dynamic>>(privateCluster, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceMesh': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterServiceMesh, Map<String, dynamic>>(serviceMesh, (value) => value.toMap()),
      'tags': ?tags,
      'webAppRoutingIngress': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterWebAppRoutingIngress, Map<String, dynamic>>(webAppRoutingIngress, (value) => value.toMap()),
    };
  }

  factory AutomaticClusterArgs.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterArgs(
      apiServerAccess: (() { final guardedValue = map['apiServerAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterApiServerAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostedSystem: (() { final guardedValue = map['hostedSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterHostedSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: pulumi.Input.fromValue(AutomaticClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCluster: (() { final guardedValue = map['privateCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterPrivateCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceMesh: (() { final guardedValue = map['serviceMesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      webAppRoutingIngress: (() { final guardedValue = map['webAppRoutingIngress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterWebAppRoutingIngress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
