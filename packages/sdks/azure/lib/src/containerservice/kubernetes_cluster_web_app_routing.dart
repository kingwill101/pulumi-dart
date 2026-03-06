// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_web_app_routing_web_app_routing_identity.dart';

class KubernetesClusterWebAppRouting {
  /// Specifies the ingress type for the default `NginxIngressController` custom resource. The allowed values are `None`, `Internal`, `External` and `AnnotationControlled`. Defaults to `AnnotationControlled`.
  final pulumi.Input<String>? defaultNginxController;
  /// Specifies the list of the DNS Zone IDs in which DNS entries are created for applications deployed to the cluster when Web App Routing is enabled. If not using Bring-Your-Own DNS zones this property should be set to an empty list.
  final pulumi.Input<List<String>> dnsZoneIds;
  /// A `web_app_routing_identity` block is exported. The exported attributes are defined below.
  final pulumi.Input<List<KubernetesClusterWebAppRoutingWebAppRoutingIdentity>>? webAppRoutingIdentities;

  /// Creates a new [KubernetesClusterWebAppRouting].
  /// [defaultNginxController] Specifies the ingress type for the default `NginxIngressController` custom resource. The allowed values are `None`, `Internal`, `External` and `AnnotationControlled`. Defaults to `AnnotationControlled`.
  /// [dnsZoneIds] Specifies the list of the DNS Zone IDs in which DNS entries are created for applications deployed to the cluster when Web App Routing is enabled. If not using Bring-Your-Own DNS zones this property should be set to an empty list.
  /// [webAppRoutingIdentities] A `web_app_routing_identity` block is exported. The exported attributes are defined below.
  const KubernetesClusterWebAppRouting({
    this.defaultNginxController,
    required this.dnsZoneIds,
    this.webAppRoutingIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultNginxController': ?defaultNginxController,
      'dnsZoneIds': dnsZoneIds,
      'webAppRoutingIdentities': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterWebAppRoutingWebAppRoutingIdentity>, List<Map<String, dynamic>>>(webAppRoutingIdentities, (value) => pulumi.Input.encodeList<KubernetesClusterWebAppRoutingWebAppRoutingIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesClusterWebAppRouting.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterWebAppRouting(
      defaultNginxController: (() { final guardedValue = map['defaultNginxController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZoneIds: pulumi.Input.fromValue((map['dnsZoneIds'] as List).cast<String>()),
      webAppRoutingIdentities: (() { final guardedValue = map['webAppRoutingIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterWebAppRoutingWebAppRoutingIdentity>(guardedValue, (value) => KubernetesClusterWebAppRoutingWebAppRoutingIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

