// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_hub_config_response.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponse {
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<PolicyControllerHubConfigResponse> policyControllerHubConfig;
  /// Version of Policy Controller installed.
  final pulumi.Input<String> version;

  /// Creates a new [PolicyControllerMembershipSpecResponse].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  const PolicyControllerMembershipSpecResponse({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': pulumi.Input.mapInputValue<PolicyControllerHubConfigResponse, Map<String, dynamic>>(policyControllerHubConfig, (value) => value.toMap()),
      'version': version,
    };
  }

  factory PolicyControllerMembershipSpecResponse.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponse(
      policyControllerHubConfig: pulumi.Input.fromValue(PolicyControllerHubConfigResponse.fromMap((map['policyControllerHubConfig']! as Map).cast<String, dynamic>())),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

