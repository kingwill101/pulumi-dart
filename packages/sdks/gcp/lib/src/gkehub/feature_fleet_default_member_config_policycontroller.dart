// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config.dart';

class FeatureFleetDefaultMemberConfigPolicycontroller {
  /// Configuration of Policy Controller
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig> policyControllerHubConfig;
  /// Configures the version of Policy Controller
  final pulumi.Input<String>? version;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontroller].
  /// [policyControllerHubConfig] Configuration of Policy Controller
  /// [version] Configures the version of Policy Controller
  FeatureFleetDefaultMemberConfigPolicycontroller({
    required this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfig': pulumi.Input.mapInputValue<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig, Map<String, dynamic>>(policyControllerHubConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontroller.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontroller(
      policyControllerHubConfig: (FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig.fromMap((map['policyControllerHubConfig'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

