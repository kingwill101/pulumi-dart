// ignore_for_file: unused_element, unnecessary_cast

import 'feature_membership_policycontroller_policy_controller_hub_config.dart';

class FeatureMembershipPolicycontroller {
  /// Policy Controller configuration for the cluster. Structure is documented below.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfig policyControllerHubConfig;
  /// Version of Policy Controller to install. Defaults to the latest version.
  final String? version;

  /// Creates a new [FeatureMembershipPolicycontroller].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster. Structure is documented below.
  /// [version] Version of Policy Controller to install. Defaults to the latest version.
  FeatureMembershipPolicycontroller({
    required this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': policyControllerHubConfig.toMap(),
      'version': ?version,
    };
  }

  factory FeatureMembershipPolicycontroller.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontroller(
      policyControllerHubConfig: FeatureMembershipPolicycontrollerPolicyControllerHubConfig.fromMap((map['policyControllerHubConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

