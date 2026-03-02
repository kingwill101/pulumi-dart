// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_evaluation_mode.dart';
import 'policy_binding.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfig {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final pulumi.Input<BinaryAuthorizationConfigEvaluationMode>? evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final pulumi.Input<List<PolicyBinding>>? policyBindings;

  /// Creates a new [BinaryAuthorizationConfig].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  BinaryAuthorizationConfig({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationConfigEvaluationMode, String>(evaluationMode, (value) => value.value),
      'policyBindings': ?pulumi.Input.mapOptionalInputValue<List<PolicyBinding>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfig(
      evaluationMode: map['evaluationMode'] == null ? null : (BinaryAuthorizationConfigEvaluationMode.fromValue(map['evaluationMode']! as String)).input(),
      policyBindings: map['policyBindings'] == null ? null : (pulumi.Input.decodeList<PolicyBinding>(map['policyBindings']!, (value) => PolicyBinding.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

