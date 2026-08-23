// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_response.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponse {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final pulumi.Input<String> evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final pulumi.Input<List<PolicyBindingResponse>> policyBindings;

  /// Creates a new [BinaryAuthorizationConfigResponse].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  const BinaryAuthorizationConfigResponse({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': evaluationMode,
      'policyBindings': pulumi.Input.mapInputValue<List<PolicyBindingResponse>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<PolicyBindingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BinaryAuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponse(
      evaluationMode: pulumi.Input.fromValue(map['evaluationMode'] as String),
      policyBindings: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyBindingResponse>(map['policyBindings']!, (value) => PolicyBindingResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
