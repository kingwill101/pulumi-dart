// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_api_server_access.dart';
import 'automatic_cluster_hosted_system.dart';
import 'automatic_cluster_identity.dart';
import 'automatic_cluster_kube_config.dart';
import 'automatic_cluster_private_cluster.dart';
import 'automatic_cluster_service_mesh.dart';
import 'automatic_cluster_web_app_routing_ingress.dart';

/// Input properties used for looking up and filtering AutomaticCluster resources.
class AutomaticClusterState {
  /// An `apiServerAccess` block as defined below.
  final pulumi.Input<AutomaticClusterApiServerAccess?>? apiServerAccess;
  /// The current version running on the Azure Kubernetes Managed Cluster.
  final pulumi.Input<String?>? currentKubernetesVersion;
  /// The FQDN of the Azure Kubernetes Managed Cluster.
  final pulumi.Input<String?>? fullyQualifiedDomainName;
  /// A `hostedSystem` block as defined below.
  final pulumi.Input<AutomaticClusterHostedSystem?>? hostedSystem;
  /// An `identity` block as defined below.
  final pulumi.Input<AutomaticClusterIdentity?>? identity;
  /// Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools.
  final pulumi.Input<String?>? kubeConfigRaw;
  /// A `kubeConfig` block as defined below.
  final pulumi.Input<List<AutomaticClusterKubeConfig>?>? kubeConfigs;
  /// The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  final pulumi.Input<String?>? nodeResourceGroupId;
  /// The OIDC issuer URL that is associated with the cluster.
  final pulumi.Input<String?>? oidcIssuerUrl;
  /// The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  final pulumi.Input<String?>? portalFullyQualifiedDomainName;
  /// A `privateCluster` block as defined below.
  final pulumi.Input<AutomaticClusterPrivateCluster?>? privateCluster;
  /// The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  final pulumi.Input<String?>? privateFullyQualifiedDomainName;
  /// Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `serviceMesh` block as defined below.
  final pulumi.Input<AutomaticClusterServiceMesh?>? serviceMesh;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A `webAppRoutingIngress` block as defined below.
  final pulumi.Input<AutomaticClusterWebAppRoutingIngress?>? webAppRoutingIngress;

  /// Creates a new [AutomaticClusterState].
  /// [apiServerAccess] An `apiServerAccess` block as defined below.
  /// [currentKubernetesVersion] The current version running on the Azure Kubernetes Managed Cluster.
  /// [fullyQualifiedDomainName] The FQDN of the Azure Kubernetes Managed Cluster.
  /// [hostedSystem] A `hostedSystem` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [kubeConfigRaw] Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools.
  /// [kubeConfigs] A `kubeConfig` block as defined below.
  /// [location] The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created.
  /// [name] The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created.
  /// [nodeResourceGroupId] The ID of the Resource Group containing the resources for this Managed Kubernetes Cluster.
  /// [oidcIssuerUrl] The OIDC issuer URL that is associated with the cluster.
  /// [portalFullyQualifiedDomainName] The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  /// [privateCluster] A `privateCluster` block as defined below.
  /// [privateFullyQualifiedDomainName] The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.
  /// [resourceGroupName] Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  /// [serviceMesh] A `serviceMesh` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [webAppRoutingIngress] A `webAppRoutingIngress` block as defined below.
  const AutomaticClusterState({
    this.apiServerAccess,
    this.currentKubernetesVersion,
    this.fullyQualifiedDomainName,
    this.hostedSystem,
    this.identity,
    this.kubeConfigRaw,
    this.kubeConfigs,
    this.location,
    this.name,
    this.nodeResourceGroupId,
    this.oidcIssuerUrl,
    this.portalFullyQualifiedDomainName,
    this.privateCluster,
    this.privateFullyQualifiedDomainName,
    this.resourceGroupName,
    this.serviceMesh,
    this.tags,
    this.webAppRoutingIngress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerAccess': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterApiServerAccess, Map<String, dynamic>>(apiServerAccess, (value) => value.toMap()),
      'currentKubernetesVersion': ?currentKubernetesVersion,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'hostedSystem': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterHostedSystem, Map<String, dynamic>>(hostedSystem, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kubeConfigRaw': ?kubeConfigRaw,
      'kubeConfigs': ?pulumi.Input.mapOptionalInputValue<List<AutomaticClusterKubeConfig>, List<Map<String, dynamic>>>(kubeConfigs, (value) => pulumi.Input.encodeList<AutomaticClusterKubeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'nodeResourceGroupId': ?nodeResourceGroupId,
      'oidcIssuerUrl': ?oidcIssuerUrl,
      'portalFullyQualifiedDomainName': ?portalFullyQualifiedDomainName,
      'privateCluster': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterPrivateCluster, Map<String, dynamic>>(privateCluster, (value) => value.toMap()),
      'privateFullyQualifiedDomainName': ?privateFullyQualifiedDomainName,
      'resourceGroupName': ?resourceGroupName,
      'serviceMesh': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterServiceMesh, Map<String, dynamic>>(serviceMesh, (value) => value.toMap()),
      'tags': ?tags,
      'webAppRoutingIngress': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterWebAppRoutingIngress, Map<String, dynamic>>(webAppRoutingIngress, (value) => value.toMap()),
    };
  }

  factory AutomaticClusterState.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterState(
      apiServerAccess: (() { final guardedValue = map['apiServerAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterApiServerAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentKubernetesVersion: (() { final guardedValue = map['currentKubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedSystem: (() { final guardedValue = map['hostedSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterHostedSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeConfigRaw: (() { final guardedValue = map['kubeConfigRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeConfigs: (() { final guardedValue = map['kubeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomaticClusterKubeConfig>(guardedValue, (value) => AutomaticClusterKubeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeResourceGroupId: (() { final guardedValue = map['nodeResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcIssuerUrl: (() { final guardedValue = map['oidcIssuerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portalFullyQualifiedDomainName: (() { final guardedValue = map['portalFullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCluster: (() { final guardedValue = map['privateCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterPrivateCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateFullyQualifiedDomainName: (() { final guardedValue = map['privateFullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceMesh: (() { final guardedValue = map['serviceMesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      webAppRoutingIngress: (() { final guardedValue = map['webAppRoutingIngress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterWebAppRoutingIngress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
