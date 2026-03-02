// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_options_type.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResource {
  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final pulumi.Input<String>? membershipCrManifest;
  /// Optional. Options for Kubernetes resource generation.
  final pulumi.Input<ResourceOptionsType>? resourceOptions;

  /// Creates a new [KubernetesResource].
  /// [membershipCrManifest] Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  /// [resourceOptions] Optional. Options for Kubernetes resource generation.
  KubernetesResource({
    this.membershipCrManifest,
    this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membershipCrManifest': ?membershipCrManifest,
      'resourceOptions': ?pulumi.Input.mapOptionalInputValue<ResourceOptionsType, Map<String, dynamic>>(resourceOptions, (value) => value.toMap()),
    };
  }

  factory KubernetesResource.fromMap(Map<String, dynamic> map) {
    return KubernetesResource(
      membershipCrManifest: map['membershipCrManifest'] == null ? null : (map['membershipCrManifest'] as String).input(),
      resourceOptions: map['resourceOptions'] == null ? null : (ResourceOptionsType.fromMap((map['resourceOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

