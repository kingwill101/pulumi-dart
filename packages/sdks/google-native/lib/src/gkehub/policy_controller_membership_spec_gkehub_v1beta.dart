// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_hub_config_gkehub_v1beta.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecGkehubV1beta {
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<PolicyControllerHubConfigGkehubV1beta>? policyControllerHubConfig;
  /// Version of Policy Controller installed.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicyControllerMembershipSpecGkehubV1beta].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpecGkehubV1beta({
    this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': ?pulumi.Input.mapOptionalInputValue<PolicyControllerHubConfigGkehubV1beta, Map<String, dynamic>>(policyControllerHubConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PolicyControllerMembershipSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecGkehubV1beta(
      policyControllerHubConfig: map['policyControllerHubConfig'] == null ? null : (PolicyControllerHubConfigGkehubV1beta.fromMap((map['policyControllerHubConfig'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

