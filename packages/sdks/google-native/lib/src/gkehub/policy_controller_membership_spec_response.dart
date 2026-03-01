// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_response.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponse {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfigResponse policyControllerHubConfig;
  /// Version of Policy Controller installed.
  final String version;

  /// Creates a new [PolicyControllerMembershipSpecResponse].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpecResponse({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': policyControllerHubConfig.toMap(),
      'version': version,
    };
  }

  factory PolicyControllerMembershipSpecResponse.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponse(
      policyControllerHubConfig: PolicyControllerHubConfigResponse.fromMap((map['policyControllerHubConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}

