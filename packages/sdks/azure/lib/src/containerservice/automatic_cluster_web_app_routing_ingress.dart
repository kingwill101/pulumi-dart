// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_web_app_routing_ingress_web_app_routing_identity.dart';

class AutomaticClusterWebAppRoutingIngress {
  /// Specifies the ingress type for the default `NginxIngressController` custom resource. The allowed values are `Internal`, `External` and `AnnotationControlled`. At least one of `defaultNginxController` or `istioEnabled` must be specified.
  final pulumi.Input<String?>? defaultNginxController;
  /// Resource IDs of the DNS zones to be associated with the Application Routing add-on. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group.
  final pulumi.Input<List<String>?>? dnsZoneIds;
  /// Enables Istio as a Gateway API implementation. Defaults to `false`. At least one of `defaultNginxController` or `istioEnabled` must be specified.
  final pulumi.Input<bool?>? istioEnabled;
  final pulumi.Input<List<AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity>?>? webAppRoutingIdentities;

  /// Creates a new [AutomaticClusterWebAppRoutingIngress].
  /// [defaultNginxController] Specifies the ingress type for the default `NginxIngressController` custom resource. The allowed values are `Internal`, `External` and `AnnotationControlled`. At least one of `defaultNginxController` or `istioEnabled` must be specified.
  /// [dnsZoneIds] Resource IDs of the DNS zones to be associated with the Application Routing add-on. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group.
  /// [istioEnabled] Enables Istio as a Gateway API implementation. Defaults to `false`. At least one of `defaultNginxController` or `istioEnabled` must be specified.
  /// [webAppRoutingIdentities] Optional.
  const AutomaticClusterWebAppRoutingIngress({
    this.defaultNginxController,
    this.dnsZoneIds,
    this.istioEnabled,
    this.webAppRoutingIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultNginxController': ?defaultNginxController,
      'dnsZoneIds': ?dnsZoneIds,
      'istioEnabled': ?istioEnabled,
      'webAppRoutingIdentities': ?pulumi.Input.mapOptionalInputValue<List<AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity>, List<Map<String, dynamic>>>(webAppRoutingIdentities, (value) => pulumi.Input.encodeList<AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomaticClusterWebAppRoutingIngress.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterWebAppRoutingIngress(
      defaultNginxController: (() { final guardedValue = map['defaultNginxController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZoneIds: (() { final guardedValue = map['dnsZoneIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      istioEnabled: (() { final guardedValue = map['istioEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webAppRoutingIdentities: (() { final guardedValue = map['webAppRoutingIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity>(guardedValue, (value) => AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
