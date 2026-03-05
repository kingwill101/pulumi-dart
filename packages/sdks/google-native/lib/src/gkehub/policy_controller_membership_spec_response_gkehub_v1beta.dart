// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_hub_config_response_gkehub_v1beta.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponseGkehubV1beta {
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<PolicyControllerHubConfigResponseGkehubV1beta> policyControllerHubConfig;
  /// Version of Policy Controller installed.
  final pulumi.Input<String> version;

  /// Creates a new [PolicyControllerMembershipSpecResponseGkehubV1beta].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpecResponseGkehubV1beta({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': pulumi.Input.mapInputValue<PolicyControllerHubConfigResponseGkehubV1beta, Map<String, dynamic>>(policyControllerHubConfig, (value) => value.toMap()),
      'version': version,
    };
  }

  factory PolicyControllerMembershipSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponseGkehubV1beta(
      policyControllerHubConfig: pulumi.Input.fromValue(PolicyControllerHubConfigResponseGkehubV1beta.fromMap((map['policyControllerHubConfig']! as Map).cast<String, dynamic>())),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

