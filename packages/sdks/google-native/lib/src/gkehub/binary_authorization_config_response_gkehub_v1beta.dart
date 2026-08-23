// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_response_gkehub_v1beta.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponseGkehubV1beta {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final pulumi.Input<String> evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final pulumi.Input<List<PolicyBindingResponseGkehubV1beta>> policyBindings;

  /// Creates a new [BinaryAuthorizationConfigResponseGkehubV1beta].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  const BinaryAuthorizationConfigResponseGkehubV1beta({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': evaluationMode,
      'policyBindings': pulumi.Input.mapInputValue<List<PolicyBindingResponseGkehubV1beta>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBindingResponseGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponseGkehubV1beta(
      evaluationMode: pulumi.Input.fromValue(map['evaluationMode'] as String),
      policyBindings: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyBindingResponseGkehubV1beta>(map['policyBindings']!, (value) => PolicyBindingResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
