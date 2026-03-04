// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_service_mesh_profile_certificate_authority.dart';

class GetKubernetesClusterServiceMeshProfile {
  /// A `certificate_authority` block as documented below.
  final pulumi.Input<
    List<GetKubernetesClusterServiceMeshProfileCertificateAuthority>
  >
  certificateAuthorities;

  /// Is Istio External Ingress Gateway enabled?
  final pulumi.Input<bool> externalIngressGatewayEnabled;

  /// Is Istio Internal Ingress Gateway enabled?
  final pulumi.Input<bool> internalIngressGatewayEnabled;

  /// The mode of the service mesh.
  final pulumi.Input<String> mode;

  /// List of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. Learn More.
  final pulumi.Input<List<String>> revisions;

  /// Creates a new [GetKubernetesClusterServiceMeshProfile].
  /// [certificateAuthorities] A `certificate_authority` block as documented below.
  /// [externalIngressGatewayEnabled] Is Istio External Ingress Gateway enabled?
  /// [internalIngressGatewayEnabled] Is Istio Internal Ingress Gateway enabled?
  /// [mode] The mode of the service mesh.
  /// [revisions] List of revisions of the Istio control plane. When an upgrade is not in progress, this holds one value. When canary upgrade is in progress, this can only hold two consecutive values. Learn More.
  GetKubernetesClusterServiceMeshProfile({
    required this.certificateAuthorities,
    required this.externalIngressGatewayEnabled,
    required this.internalIngressGatewayEnabled,
    required this.mode,
    required this.revisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorities':
          pulumi.Input.mapInputValue<
            List<GetKubernetesClusterServiceMeshProfileCertificateAuthority>,
            List<Map<String, dynamic>>
          >(
            certificateAuthorities,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesClusterServiceMeshProfileCertificateAuthority,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'externalIngressGatewayEnabled': externalIngressGatewayEnabled,
      'internalIngressGatewayEnabled': internalIngressGatewayEnabled,
      'mode': mode,
      'revisions': revisions,
    };
  }

  factory GetKubernetesClusterServiceMeshProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesClusterServiceMeshProfile(
      certificateAuthorities: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetKubernetesClusterServiceMeshProfileCertificateAuthority
        >(
          map['certificateAuthorities']!,
          (value) =>
              GetKubernetesClusterServiceMeshProfileCertificateAuthority.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      externalIngressGatewayEnabled: pulumi.Input.fromValue(
        map['externalIngressGatewayEnabled'] as bool,
      ),
      internalIngressGatewayEnabled: pulumi.Input.fromValue(
        map['internalIngressGatewayEnabled'] as bool,
      ),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      revisions: pulumi.Input.fromValue(
        (map['revisions'] as List).cast<String>(),
      ),
    );
  }
}
