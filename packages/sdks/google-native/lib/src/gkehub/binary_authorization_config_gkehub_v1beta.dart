// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_evaluation_mode_gkehub_v1beta.dart';
import 'policy_binding_gkehub_v1beta.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigGkehubV1beta {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final pulumi.Input<BinaryAuthorizationConfigEvaluationModeGkehubV1beta>? evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final pulumi.Input<List<PolicyBindingGkehubV1beta>>? policyBindings;

  /// Creates a new [BinaryAuthorizationConfigGkehubV1beta].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  BinaryAuthorizationConfigGkehubV1beta({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationConfigEvaluationModeGkehubV1beta, String>(evaluationMode, (value) => value.value),
      'policyBindings': ?pulumi.Input.mapOptionalInputValue<List<PolicyBindingGkehubV1beta>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBindingGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigGkehubV1beta(
      evaluationMode: map['evaluationMode'] == null ? null : (BinaryAuthorizationConfigEvaluationModeGkehubV1beta.fromValue(map['evaluationMode']! as String)).input(),
      policyBindings: map['policyBindings'] == null ? null : (pulumi.Input.decodeList<PolicyBindingGkehubV1beta>(map['policyBindings']!, (value) => PolicyBindingGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

