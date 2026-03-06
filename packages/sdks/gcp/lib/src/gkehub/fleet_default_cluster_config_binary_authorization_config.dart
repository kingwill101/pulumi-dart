// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_default_cluster_config_binary_authorization_config_policy_binding.dart';

class FleetDefaultClusterConfigBinaryAuthorizationConfig {
  /// Mode of operation for binauthz policy evaluation.
  /// Possible values are: `DISABLED`, `POLICY_BINDINGS`.
  final pulumi.Input<String>? evaluationMode;
  /// Binauthz policies that apply to this cluster.
  /// Structure is documented below.
  final pulumi.Input<List<FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding>>? policyBindings;

  /// Creates a new [FleetDefaultClusterConfigBinaryAuthorizationConfig].
  /// [evaluationMode] Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Binauthz policies that apply to this cluster.
  const FleetDefaultClusterConfigBinaryAuthorizationConfig({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode,
      'policyBindings': ?pulumi.Input.mapOptionalInputValue<List<FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding>, List<Map<String, dynamic>>>(policyBindings, (value) => pulumi.Input.encodeList<FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetDefaultClusterConfigBinaryAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return FleetDefaultClusterConfigBinaryAuthorizationConfig(
      evaluationMode: (() { final guardedValue = map['evaluationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyBindings: (() { final guardedValue = map['policyBindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding>(guardedValue, (value) => FleetDefaultClusterConfigBinaryAuthorizationConfigPolicyBinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

