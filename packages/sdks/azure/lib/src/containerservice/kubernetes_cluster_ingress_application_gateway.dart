// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_ingress_application_gateway_ingress_application_gateway_identity.dart';

class KubernetesClusterIngressApplicationGateway {
  /// The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster.
  final pulumi.Input<String?>? effectiveGatewayId;
  /// The ID of the Application Gateway to integrate with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-existing) page for further details.
  final pulumi.Input<String?>? gatewayId;
  /// The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  final pulumi.Input<String?>? gatewayName;
  /// An `ingressApplicationGatewayIdentity` block is exported. The exported attributes are defined below.
  final pulumi.Input<List<KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>?>? ingressApplicationGatewayIdentities;
  /// The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  final pulumi.Input<String?>? subnetCidr;
  /// The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  ///
  /// &gt; **Note:** Exactly one of `gatewayId`, `subnetId` or `subnetCidr` must be specified.
  ///
  /// &gt; **Note:** If specifying `ingressApplicationGateway` in conjunction with `onlyCriticalAddonsEnabled`, the AGIC pod will fail to start. A separate `azure.containerservice.KubernetesClusterNodePool` is required to run the AGIC pod successfully. This is because AGIC is classed as a "non-critical addon".
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [KubernetesClusterIngressApplicationGateway].
  /// [effectiveGatewayId] The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster.
  /// [gatewayId] The ID of the Application Gateway to integrate with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-existing) page for further details.
  /// [gatewayName] The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  /// [ingressApplicationGatewayIdentities] An `ingressApplicationGatewayIdentity` block is exported. The exported attributes are defined below.
  /// [subnetCidr] The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  /// [subnetId] The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  const KubernetesClusterIngressApplicationGateway({
    this.effectiveGatewayId,
    this.gatewayId,
    this.gatewayName,
    this.ingressApplicationGatewayIdentities,
    this.subnetCidr,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveGatewayId': ?effectiveGatewayId,
      'gatewayId': ?gatewayId,
      'gatewayName': ?gatewayName,
      'ingressApplicationGatewayIdentities': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>, List<Map<String, dynamic>>>(ingressApplicationGatewayIdentities, (value) => pulumi.Input.encodeList<KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetCidr': ?subnetCidr,
      'subnetId': ?subnetId,
    };
  }

  factory KubernetesClusterIngressApplicationGateway.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterIngressApplicationGateway(
      effectiveGatewayId: (() { final guardedValue = map['effectiveGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressApplicationGatewayIdentities: (() { final guardedValue = map['ingressApplicationGatewayIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>(guardedValue, (value) => KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetCidr: (() { final guardedValue = map['subnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
