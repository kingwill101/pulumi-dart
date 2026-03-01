// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_response_gkehub_v1alpha.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponseGkehubV1alpha {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfigResponseGkehubV1alpha policyControllerHubConfig;
  /// Version of Policy Controller installed.
  final String version;

  /// Creates a new [PolicyControllerMembershipSpecResponseGkehubV1alpha].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpecResponseGkehubV1alpha({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': policyControllerHubConfig.toMap(),
      'version': version,
    };
  }

  factory PolicyControllerMembershipSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponseGkehubV1alpha(
      policyControllerHubConfig: PolicyControllerHubConfigResponseGkehubV1alpha.fromMap((map['policyControllerHubConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}

