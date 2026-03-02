// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_resources_patch_admissionregistration_k8s_io_v1alpha1.dart';
import 'param_ref_patch_admissionregistration_k8s_io_v1alpha1.dart';

/// MutatingAdmissionPolicyBindingSpec is the specification of the MutatingAdmissionPolicyBinding.
class MutatingAdmissionPolicyBindingSpecPatch {
  /// matchResources limits what resources match this binding and may be mutated by it. Note that if matchResources matches a resource, the resource must also match a policy's matchConstraints and matchConditions before the resource may be mutated. When matchResources is unset, it does not constrain resource matching, and only the policy's matchConstraints and matchConditions must match for the resource to be mutated. Additionally, matchResources.resourceRules are optional and do not constraint matching when unset. Note that this is differs from MutatingAdmissionPolicy matchConstraints, where resourceRules are required. The CREATE, UPDATE and CONNECT operations are allowed.  The DELETE operation may not be matched. '*' matches CREATE, UPDATE and CONNECT.
  final pulumi.Input<MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1>? matchResources;
  /// paramRef specifies the parameter resource used to configure the admission control policy. It should point to a resource of the type specified in spec.ParamKind of the bound MutatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred to by ParamRef does not exist, this binding is considered mis-configured and the FailurePolicy of the MutatingAdmissionPolicy applied. If the policy does not specify a ParamKind then this field is ignored, and the rules are evaluated without a param.
  final pulumi.Input<ParamRefPatchAdmissionregistrationK8sIoV1alpha1>? paramRef;
  /// policyName references a MutatingAdmissionPolicy name which the MutatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  final pulumi.Input<String>? policyName;

  /// Creates a new [MutatingAdmissionPolicyBindingSpecPatch].
  /// [matchResources] matchResources limits what resources match this binding and may be mutated by it. Note that if matchResources matches a resource, the resource must also match a policy's matchConstraints and matchConditions before the resource may be mutated. When matchResources is unset, it does not constrain resource matching, and only the policy's matchConstraints and matchConditions must match for the resource to be mutated. Additionally, matchResources.resourceRules are optional and do not constraint matching when unset. Note that this is differs from MutatingAdmissionPolicy matchConstraints, where resourceRules are required. The CREATE, UPDATE and CONNECT operations are allowed.  The DELETE operation may not be matched. '*' matches CREATE, UPDATE and CONNECT.
  /// [paramRef] paramRef specifies the parameter resource used to configure the admission control policy. It should point to a resource of the type specified in spec.ParamKind of the bound MutatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred to by ParamRef does not exist, this binding is considered mis-configured and the FailurePolicy of the MutatingAdmissionPolicy applied. If the policy does not specify a ParamKind then this field is ignored, and the rules are evaluated without a param.
  /// [policyName] policyName references a MutatingAdmissionPolicy name which the MutatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  MutatingAdmissionPolicyBindingSpecPatch({
    this.matchResources,
    this.paramRef,
    this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchResources': ?pulumi.Input.mapOptionalInputValue<MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(matchResources, (value) => value.toMap()),
      'paramRef': ?pulumi.Input.mapOptionalInputValue<ParamRefPatchAdmissionregistrationK8sIoV1alpha1, Map<String, dynamic>>(paramRef, (value) => value.toMap()),
      'policyName': ?policyName,
    };
  }

  factory MutatingAdmissionPolicyBindingSpecPatch.fromMap(Map<String, dynamic> map) {
    return MutatingAdmissionPolicyBindingSpecPatch(
      matchResources: map['matchResources'] == null ? null : (MatchResourcesPatchAdmissionregistrationK8sIoV1alpha1.fromMap((map['matchResources'] as Map).cast<String, dynamic>())).input(),
      paramRef: map['paramRef'] == null ? null : (ParamRefPatchAdmissionregistrationK8sIoV1alpha1.fromMap((map['paramRef'] as Map).cast<String, dynamic>())).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
    );
  }
}

