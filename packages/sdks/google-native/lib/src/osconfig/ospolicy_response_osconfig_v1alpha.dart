// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_group_response_osconfig_v1alpha.dart';

/// An OS policy defines the desired state configuration for a VM.
class OSPolicyResponseOsconfigV1alpha {
  /// This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  final pulumi.Input<bool> allowNoResourceGroupMatch;
  /// Policy description. Length of the description is limited to 1024 characters.
  final pulumi.Input<String> description;
  /// Policy mode
  final pulumi.Input<String> mode;
  /// List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  final pulumi.Input<List<OSPolicyResourceGroupResponseOsconfigV1alpha>> resourceGroups;

  /// Creates a new [OSPolicyResponseOsconfigV1alpha].
  /// [allowNoResourceGroupMatch] This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.
  /// [description] Policy description. Length of the description is limited to 1024 characters.
  /// [mode] Policy mode
  /// [resourceGroups] List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`
  const OSPolicyResponseOsconfigV1alpha({
    required this.allowNoResourceGroupMatch,
    required this.description,
    required this.mode,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoResourceGroupMatch': allowNoResourceGroupMatch,
      'description': description,
      'mode': mode,
      'resourceGroups': pulumi.Input.mapInputValue<List<OSPolicyResourceGroupResponseOsconfigV1alpha>, List<Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeList<OSPolicyResourceGroupResponseOsconfigV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OSPolicyResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResponseOsconfigV1alpha(
      allowNoResourceGroupMatch: pulumi.Input.fromValue(map['allowNoResourceGroupMatch'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      resourceGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<OSPolicyResourceGroupResponseOsconfigV1alpha>(map['resourceGroups']!, (value) => OSPolicyResourceGroupResponseOsconfigV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
