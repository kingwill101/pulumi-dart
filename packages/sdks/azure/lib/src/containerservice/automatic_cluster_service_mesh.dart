// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cluster_service_mesh_certificate_authority.dart';

class AutomaticClusterServiceMesh {
  /// A `certificateAuthority` block as defined below. This configuration allows you to bring your own root certificate and keys for Istio CA in the Istio-based service mesh add-on for Azure Kubernetes Service.
  final pulumi.Input<AutomaticClusterServiceMeshCertificateAuthority?>? certificateAuthority;
  /// Enables Istio External Ingress Gateway. Defaults to `false`.
  ///
  /// &gt; **Note:** Currently only one Internal Ingress Gateway and one External Ingress Gateway are allowed per cluster
  final pulumi.Input<bool?>? externalIngressGatewayEnabled;
  /// Enables Istio Internal Ingress Gateway. Defaults to `false`.
  final pulumi.Input<bool?>? internalIngressGatewayEnabled;
  /// The mechanism used to redirect application traffic to the Istio sidecar proxy. Possible values are `CNIChaining` and `InitContainers`. Defaults to `InitContainers`.
  final pulumi.Input<String?>? proxyRedirectMechanism;
  /// Specify `1` or `2` Istio control plane revisions for managing minor upgrades using the canary upgrade process. For example, create the resource with `revisions` set to `["asm-1-27"]`. To start the canary upgrade, change `revisions` to `["asm-1-27", "asm-1-28"]`. To roll back the canary upgrade, revert to `["asm-1-27"]`. To confirm the upgrade, change to `["asm-1-28"]`.
  ///
  /// &gt; **Note:** Upgrading to a new (canary) revision does not affect existing sidecar proxies. You need to apply the canary revision label to selected namespaces and restart pods with kubectl to inject the new sidecar proxy. [Learn more](https://istio.io/latest/docs/setup/upgrade/canary/#data-plane).
  final pulumi.Input<List<String>> revisions;

  /// Creates a new [AutomaticClusterServiceMesh].
  /// [certificateAuthority] A `certificateAuthority` block as defined below. This configuration allows you to bring your own root certificate and keys for Istio CA in the Istio-based service mesh add-on for Azure Kubernetes Service.
  /// [externalIngressGatewayEnabled] Enables Istio External Ingress Gateway. Defaults to `false`.
  /// [internalIngressGatewayEnabled] Enables Istio Internal Ingress Gateway. Defaults to `false`.
  /// [proxyRedirectMechanism] The mechanism used to redirect application traffic to the Istio sidecar proxy. Possible values are `CNIChaining` and `InitContainers`. Defaults to `InitContainers`.
  /// [revisions] Specify `1` or `2` Istio control plane revisions for managing minor upgrades using the canary upgrade process. For example, create the resource with `revisions` set to `["asm-1-27"]`. To start the canary upgrade, change `revisions` to `["asm-1-27", "asm-1-28"]`. To roll back the canary upgrade, revert to `["asm-1-27"]`. To confirm the upgrade, change to `["asm-1-28"]`.
  const AutomaticClusterServiceMesh({
    this.certificateAuthority,
    this.externalIngressGatewayEnabled,
    this.internalIngressGatewayEnabled,
    this.proxyRedirectMechanism,
    required this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?pulumi.Input.mapOptionalInputValue<AutomaticClusterServiceMeshCertificateAuthority, Map<String, dynamic>>(certificateAuthority, (value) => value.toMap()),
      'externalIngressGatewayEnabled': ?externalIngressGatewayEnabled,
      'internalIngressGatewayEnabled': ?internalIngressGatewayEnabled,
      'proxyRedirectMechanism': ?proxyRedirectMechanism,
      'revisions': revisions,
    };
  }

  factory AutomaticClusterServiceMesh.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterServiceMesh(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticClusterServiceMeshCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      externalIngressGatewayEnabled: (() { final guardedValue = map['externalIngressGatewayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internalIngressGatewayEnabled: (() { final guardedValue = map['internalIngressGatewayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxyRedirectMechanism: (() { final guardedValue = map['proxyRedirectMechanism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisions: pulumi.Input.fromValue((map['revisions'] as List).cast<String>()),
    );
  }
}
