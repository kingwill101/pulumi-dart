// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_evaluation_mode_container_v1beta1.dart';
import 'policy_binding.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorizationContainerV1beta1 {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final pulumi.Input<bool>? enabled;
  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final pulumi.Input<BinaryAuthorizationEvaluationModeContainerV1beta1>? evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final pulumi.Input<List<PolicyBinding>>? policyBindings;

  /// Creates a new [BinaryAuthorizationContainerV1beta1].
  /// [enabled] This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  /// [evaluationMode] Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  BinaryAuthorizationContainerV1beta1({
    this.enabled,
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'evaluationMode': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationEvaluationModeContainerV1beta1, String>(evaluationMode, (value) => value.value),
      'policyBindings': ?pulumi.Input.mapOptionalInputValue<List<PolicyBinding>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationContainerV1beta1(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      evaluationMode: map['evaluationMode'] == null ? null : (BinaryAuthorizationEvaluationModeContainerV1beta1.fromValue(map['evaluationMode'] as String)).input(),
      policyBindings: map['policyBindings'] == null ? null : (pulumi.Input.decodeList<PolicyBinding>(map['policyBindings'], (value) => PolicyBinding.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

