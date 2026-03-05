// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_evaluation_mode_gkehub_v1alpha.dart';
import 'policy_binding_gkehub_v1alpha.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigGkehubV1alpha {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final pulumi.Input<BinaryAuthorizationConfigEvaluationModeGkehubV1alpha>? evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final pulumi.Input<List<PolicyBindingGkehubV1alpha>>? policyBindings;

  /// Creates a new [BinaryAuthorizationConfigGkehubV1alpha].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  BinaryAuthorizationConfigGkehubV1alpha({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationConfigEvaluationModeGkehubV1alpha, String>(evaluationMode, (value) => value.wireValue),
      'policyBindings': ?pulumi.Input.mapOptionalInputValue<List<PolicyBindingGkehubV1alpha>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBindingGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigGkehubV1alpha(
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorizationConfigEvaluationModeGkehubV1alpha.fromValue(guardedValue as String)); })(),
      policyBindings: (() { final guardedValue = map['policyBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyBindingGkehubV1alpha>(guardedValue, (value) => PolicyBindingGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

