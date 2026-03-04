// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config.dart';

class FeatureMembershipPolicycontroller {
  /// Policy Controller configuration for the cluster. Structure is documented below.
  final pulumi.Input<FeatureMembershipPolicycontrollerPolicyControllerHubConfig>
  policyControllerHubConfig;

  /// Version of Policy Controller to install. Defaults to the latest version.
  final pulumi.Input<String>? version;

  /// Creates a new [FeatureMembershipPolicycontroller].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster. Structure is documented below.
  /// [version] Version of Policy Controller to install. Defaults to the latest version.
  FeatureMembershipPolicycontroller({
    required this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig':
          pulumi.Input.mapInputValue<
            FeatureMembershipPolicycontrollerPolicyControllerHubConfig,
            Map<String, dynamic>
          >(policyControllerHubConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory FeatureMembershipPolicycontroller.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontroller(
      policyControllerHubConfig: pulumi.Input.fromValue(
        FeatureMembershipPolicycontrollerPolicyControllerHubConfig.fromMap(
          (map['policyControllerHubConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
