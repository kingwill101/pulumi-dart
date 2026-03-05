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
      'evaluationMode': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationConfigEvaluationModeGkehubV1beta, String>(evaluationMode, (value) => value.wireValue),
      'policyBindings': ?pulumi.Input.mapOptionalInputValue<List<PolicyBindingGkehubV1beta>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBindingGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigGkehubV1beta(
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorizationConfigEvaluationModeGkehubV1beta.fromValue(guardedValue as String)); })(),
      policyBindings: (() { final guardedValue = map['policyBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyBindingGkehubV1beta>(guardedValue, (value) => PolicyBindingGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

