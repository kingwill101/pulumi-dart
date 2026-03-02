// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_ingress_application_gateway_ingress_application_gateway_identity.dart';

class GetKubernetesClusterIngressApplicationGateway {
  /// The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster.
  final pulumi.Input<String> effectiveGatewayId;
  /// The ID of the Application Gateway integrated with the ingress controller of this Kubernetes Cluster. This attribute is only set when gateway_id is specified when configuring the `ingress_application_gateway` addon.
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> gatewayName;
  /// An `ingress_application_gateway_identity` block as defined below.
  final pulumi.Input<List<GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>> ingressApplicationGatewayIdentities;
  /// The subnet CIDR used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. This attribute is only set when `subnet_cidr` is specified when configuring the `ingress_application_gateway` addon.
  final pulumi.Input<String> subnetCidr;
  /// The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. This attribute is only set when `subnet_id` is specified when configuring the `ingress_application_gateway` addon.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetKubernetesClusterIngressApplicationGateway].
  /// [effectiveGatewayId] The ID of the Application Gateway associated with the ingress controller deployed to this Kubernetes Cluster.
  /// [gatewayId] The ID of the Application Gateway integrated with the ingress controller of this Kubernetes Cluster. This attribute is only set when gateway_id is specified when configuring the `ingress_application_gateway` addon.
  /// [gatewayName] Required.
  /// [ingressApplicationGatewayIdentities] An `ingress_application_gateway_identity` block as defined below.
  /// [subnetCidr] The subnet CIDR used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. This attribute is only set when `subnet_cidr` is specified when configuring the `ingress_application_gateway` addon.
  /// [subnetId] The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster. This attribute is only set when `subnet_id` is specified when configuring the `ingress_application_gateway` addon.
  GetKubernetesClusterIngressApplicationGateway({
    required this.effectiveGatewayId,
    required this.gatewayId,
    required this.gatewayName,
    required this.ingressApplicationGatewayIdentities,
    required this.subnetCidr,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveGatewayId': effectiveGatewayId,
      'gatewayId': gatewayId,
      'gatewayName': gatewayName,
      'ingressApplicationGatewayIdentities': pulumi.Input.mapInputValue<List<GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>, List<Map<String, dynamic>>>(ingressApplicationGatewayIdentities, (value) => pulumi.Input.encodeList<GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetCidr': subnetCidr,
      'subnetId': subnetId,
    };
  }

  factory GetKubernetesClusterIngressApplicationGateway.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterIngressApplicationGateway(
      effectiveGatewayId: (map['effectiveGatewayId'] as String).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      ingressApplicationGatewayIdentities: (pulumi.Input.decodeList<GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity>(map['ingressApplicationGatewayIdentities'], (value) => GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetCidr: (map['subnetCidr'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

