// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_options_gkehub_v1alpha.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResourceGkehubV1alpha {
  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final pulumi.Input<String>? membershipCrManifest;
  /// Optional. Options for Kubernetes resource generation.
  final pulumi.Input<ResourceOptionsGkehubV1alpha>? resourceOptions;

  /// Creates a new [KubernetesResourceGkehubV1alpha].
  /// [membershipCrManifest] Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  /// [resourceOptions] Optional. Options for Kubernetes resource generation.
  const KubernetesResourceGkehubV1alpha({
    this.membershipCrManifest,
    this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membershipCrManifest': ?membershipCrManifest,
      'resourceOptions': ?pulumi.Input.mapOptionalInputValue<ResourceOptionsGkehubV1alpha, Map<String, dynamic>>(resourceOptions, (value) => value.toMap()),
    };
  }

  factory KubernetesResourceGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return KubernetesResourceGkehubV1alpha(
      membershipCrManifest: (() { final guardedValue = map['membershipCrManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOptions: (() { final guardedValue = map['resourceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceOptionsGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

