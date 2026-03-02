// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_hub_config.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpec {
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<PolicyControllerHubConfig>? policyControllerHubConfig;
  /// Version of Policy Controller installed.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicyControllerMembershipSpec].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpec({
    this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': ?pulumi.Input.mapOptionalInputValue<PolicyControllerHubConfig, Map<String, dynamic>>(policyControllerHubConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PolicyControllerMembershipSpec.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpec(
      policyControllerHubConfig: map['policyControllerHubConfig'] == null ? null : (PolicyControllerHubConfig.fromMap((map['policyControllerHubConfig']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

