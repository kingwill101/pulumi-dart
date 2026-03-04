// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_hub_config_gkehub_v1alpha.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecGkehubV1alpha {
  /// Policy Controller configuration for the cluster.
  final pulumi.Input<PolicyControllerHubConfigGkehubV1alpha>?
  policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final pulumi.Input<String>? version;

  /// Creates a new [PolicyControllerMembershipSpecGkehubV1alpha].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpecGkehubV1alpha({
    this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyControllerHubConfigGkehubV1alpha,
            Map<String, dynamic>
          >(policyControllerHubConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PolicyControllerMembershipSpecGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyControllerMembershipSpecGkehubV1alpha(
      policyControllerHubConfig: (() {
        final guardedValue = map['policyControllerHubConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyControllerHubConfigGkehubV1alpha.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
