// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_ingress_application_gateway_ingress_application_gateway_identity.dart';

class KubernetesClusterIngressApplicationGateway {
  /// The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster.
  final pulumi.Input<String>? effectiveGatewayId;
  /// The ID of the Application Gateway to integrate with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-existing) page for further details.
  final pulumi.Input<String>? gatewayId;
  /// The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  final pulumi.Input<String>? gatewayName;
  /// An `ingress_application_gateway_identity` block is exported. The exported attributes are defined below.
  final pulumi.Input<List<KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>>? ingressApplicationGatewayIdentities;
  /// The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  final pulumi.Input<String>? subnetCidr;
  /// The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  ///
  /// > **Note:** Exactly one of `gateway_id`, `subnet_id` or `subnet_cidr` must be specified.
  ///
  /// > **Note:** If specifying `ingress_application_gateway` in conjunction with `only_critical_addons_enabled`, the AGIC pod will fail to start. A separate `azure.containerservice.KubernetesClusterNodePool` is required to run the AGIC pod successfully. This is because AGIC is classed as a "non-critical addon".
  final pulumi.Input<String>? subnetId;

  /// Creates a new [KubernetesClusterIngressApplicationGateway].
  /// [effectiveGatewayId] The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster.
  /// [gatewayId] The ID of the Application Gateway to integrate with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-existing) page for further details.
  /// [gatewayName] The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  /// [ingressApplicationGatewayIdentities] An `ingress_application_gateway_identity` block is exported. The exported attributes are defined below.
  /// [subnetCidr] The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  /// [subnetId] The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. See [this](https://docs.microsoft.com/azure/application-gateway/tutorial-ingress-controller-add-on-new) page for further details.
  KubernetesClusterIngressApplicationGateway({
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
      effectiveGatewayId: map['effectiveGatewayId'] == null ? null : (map['effectiveGatewayId'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      gatewayName: map['gatewayName'] == null ? null : (map['gatewayName'] as String).input(),
      ingressApplicationGatewayIdentities: map['ingressApplicationGatewayIdentities'] == null ? null : (pulumi.Input.decodeList<KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>(map['ingressApplicationGatewayIdentities'], (value) => KubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetCidr: map['subnetCidr'] == null ? null : (map['subnetCidr'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

