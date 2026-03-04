// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_service_mesh_profile_certificate_authority.dart';

class KubernetesClusterServiceMeshProfile {
  /// A `certificate_authority` block as defined below. When this property is specified, `key_vault_secrets_provider` is also required to be set. This configuration allows you to bring your own root certificate and keys for Istio CA in the Istio-based service mesh add-on for Azure Kubernetes Service.
  final pulumi.Input<KubernetesClusterServiceMeshProfileCertificateAuthority>?
  certificateAuthority;

  /// Is Istio External Ingress Gateway enabled?
  ///
  /// &gt; **NOTE:** Currently only one Internal Ingress Gateway and one External Ingress Gateway are allowed per cluster
  final pulumi.Input<bool>? externalIngressGatewayEnabled;

  /// Is Istio Internal Ingress Gateway enabled?
  final pulumi.Input<bool>? internalIngressGatewayEnabled;

  /// The mode of the service mesh. Possible value is `Istio`.
  final pulumi.Input<String> mode;

  /// Specify 1 or 2 Istio control plane revisions for managing minor upgrades using the canary upgrade process. For example, create the resource with `revisions` set to `["asm-1-25"]`, or leave it empty (the `revisions` will only be known after apply). To start the canary upgrade, change `revisions` to `["asm-1-25", "asm-1-26"]`. To roll back the canary upgrade, revert to `["asm-1-25"]`. To confirm the upgrade, change to `["asm-1-26"]`.
  ///
  /// &gt; **NOTE:** Upgrading to a new (canary) revision does not affect existing sidecar proxies. You need to apply the canary revision label to selected namespaces and restart pods with kubectl to inject the new sidecar proxy. [Learn more](https://istio.io/latest/docs/setup/upgrade/canary/#data-plane).
  final pulumi.Input<List<String>> revisions;

  /// Creates a new [KubernetesClusterServiceMeshProfile].
  /// [certificateAuthority] A `certificate_authority` block as defined below. When this property is specified, `key_vault_secrets_provider` is also required to be set. This configuration allows you to bring your own root certificate and keys for Istio CA in the Istio-based service mesh add-on for Azure Kubernetes Service.
  /// [externalIngressGatewayEnabled] Is Istio External Ingress Gateway enabled?
  /// [internalIngressGatewayEnabled] Is Istio Internal Ingress Gateway enabled?
  /// [mode] The mode of the service mesh. Possible value is `Istio`.
  /// [revisions] Specify 1 or 2 Istio control plane revisions for managing minor upgrades using the canary upgrade process. For example, create the resource with `revisions` set to `["asm-1-25"]`, or leave it empty (the `revisions` will only be known after apply). To start the canary upgrade, change `revisions` to `["asm-1-25", "asm-1-26"]`. To roll back the canary upgrade, revert to `["asm-1-25"]`. To confirm the upgrade, change to `["asm-1-26"]`.
  KubernetesClusterServiceMeshProfile({
    this.certificateAuthority,
    this.externalIngressGatewayEnabled,
    this.internalIngressGatewayEnabled,
    required this.mode,
    required this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority':
          ?pulumi.Input.mapOptionalInputValue<
            KubernetesClusterServiceMeshProfileCertificateAuthority,
            Map<String, dynamic>
          >(certificateAuthority, (value) => value.toMap()),
      'externalIngressGatewayEnabled': ?externalIngressGatewayEnabled,
      'internalIngressGatewayEnabled': ?internalIngressGatewayEnabled,
      'mode': mode,
      'revisions': revisions,
    };
  }

  factory KubernetesClusterServiceMeshProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesClusterServiceMeshProfile(
      certificateAuthority: (() {
        final guardedValue = map['certificateAuthority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KubernetesClusterServiceMeshProfileCertificateAuthority.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      externalIngressGatewayEnabled: (() {
        final guardedValue = map['externalIngressGatewayEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      internalIngressGatewayEnabled: (() {
        final guardedValue = map['internalIngressGatewayEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      revisions: pulumi.Input.fromValue(
        (map['revisions'] as List).cast<String>(),
      ),
    );
  }
}
