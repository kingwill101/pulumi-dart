// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_manifest_response_gkehub_v1beta1.dart';
import 'resource_options_response_gkehub_v1beta1.dart';

/// KubernetesResource contains the YAML manifests and configuration for Membership Kubernetes resources in the cluster. After CreateMembership or UpdateMembership, these resources should be re-applied in the cluster.
class KubernetesResourceResponseGkehubV1beta1 {
  /// The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final pulumi.Input<List<ResourceManifestResponseGkehubV1beta1>> connectResources;
  /// Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  final pulumi.Input<String> membershipCrManifest;
  /// Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  final pulumi.Input<List<ResourceManifestResponseGkehubV1beta1>> membershipResources;
  /// Optional. Options for Kubernetes resource generation.
  final pulumi.Input<ResourceOptionsResponseGkehubV1beta1> resourceOptions;

  /// Creates a new [KubernetesResourceResponseGkehubV1beta1].
  /// [connectResources] The Kubernetes resources for installing the GKE Connect agent This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [membershipCrManifest] Input only. The YAML representation of the Membership CR. This field is ignored for GKE clusters where Hub can read the CR directly. Callers should provide the CR that is currently present in the cluster during CreateMembership or UpdateMembership, or leave this field empty if none exists. The CR manifest is used to validate the cluster has not been registered with another Membership.
  /// [membershipResources] Additional Kubernetes resources that need to be applied to the cluster after Membership creation, and after every update. This field is only populated in the Membership returned from a successful long-running operation from CreateMembership or UpdateMembership. It is not populated during normal GetMembership or ListMemberships requests. To get the resource manifest after the initial registration, the caller should make a UpdateMembership call with an empty field mask.
  /// [resourceOptions] Optional. Options for Kubernetes resource generation.
  KubernetesResourceResponseGkehubV1beta1({
    required this.connectResources,
    required this.membershipCrManifest,
    required this.membershipResources,
    required this.resourceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectResources': pulumi.Input.mapInputValue<List<ResourceManifestResponseGkehubV1beta1>, List<Map<String, dynamic>>>(connectResources, (value) => pulumi.Input.encodeList<ResourceManifestResponseGkehubV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'membershipCrManifest': membershipCrManifest,
      'membershipResources': pulumi.Input.mapInputValue<List<ResourceManifestResponseGkehubV1beta1>, List<Map<String, dynamic>>>(membershipResources, (value) => pulumi.Input.encodeList<ResourceManifestResponseGkehubV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceOptions': pulumi.Input.mapInputValue<ResourceOptionsResponseGkehubV1beta1, Map<String, dynamic>>(resourceOptions, (value) => value.toMap()),
    };
  }

  factory KubernetesResourceResponseGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return KubernetesResourceResponseGkehubV1beta1(
      connectResources: (pulumi.Input.decodeList<ResourceManifestResponseGkehubV1beta1>(map['connectResources'], (value) => ResourceManifestResponseGkehubV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      membershipCrManifest: (map['membershipCrManifest'] as String).input(),
      membershipResources: (pulumi.Input.decodeList<ResourceManifestResponseGkehubV1beta1>(map['membershipResources'], (value) => ResourceManifestResponseGkehubV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceOptions: (ResourceOptionsResponseGkehubV1beta1.fromMap((map['resourceOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

