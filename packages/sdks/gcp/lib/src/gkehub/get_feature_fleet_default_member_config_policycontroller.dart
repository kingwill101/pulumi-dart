// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontroller {
  /// Configuration of Policy Controller
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig>> policyControllerHubConfigs;
  /// Configures the version of Policy Controller
  final pulumi.Input<String> version;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontroller].
  /// [policyControllerHubConfigs] Configuration of Policy Controller
  /// [version] Configures the version of Policy Controller
  GetFeatureFleetDefaultMemberConfigPolicycontroller({
    required this.policyControllerHubConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyControllerHubConfigs': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig>, List<Map<String, dynamic>>>(policyControllerHubConfigs, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontroller.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontroller(
      policyControllerHubConfigs: (pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig>(map['policyControllerHubConfigs'], (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: (map['version'] as String).input(),
    );
  }
}

