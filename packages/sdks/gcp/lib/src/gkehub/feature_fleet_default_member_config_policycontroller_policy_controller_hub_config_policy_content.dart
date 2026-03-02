// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_bundle.dart';
import 'feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_template_library.dart';

class FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent {
  /// Configures which bundles to install and their corresponding install specs.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>>? bundles;
  /// Configures the installation of the Template Library.
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>? templateLibrary;

  /// Creates a new [FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent].
  /// [bundles] Configures which bundles to install and their corresponding install specs.
  /// [templateLibrary] Configures the installation of the Template Library.
  FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': ?pulumi.Input.mapOptionalInputValue<List<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>, List<Map<String, dynamic>>>(bundles, (value) => pulumi.Input.encodeList<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateLibrary': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary, Map<String, dynamic>>(templateLibrary, (value) => value.toMap()),
    };
  }

  factory FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent(
      bundles: map['bundles'] == null ? null : (pulumi.Input.decodeList<FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>(map['bundles'], (value) => FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateLibrary: map['templateLibrary'] == null ? null : (FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap((map['templateLibrary'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

