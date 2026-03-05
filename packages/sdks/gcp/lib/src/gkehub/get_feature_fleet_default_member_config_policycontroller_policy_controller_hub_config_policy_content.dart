// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_bundle.dart';
import 'get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config_policy_content_template_library.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent {
  /// Configures which bundles to install and their corresponding install specs.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>> bundles;
  /// Configures the installation of the Template Library.
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>> templateLibraries;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent].
  /// [bundles] Configures which bundles to install and their corresponding install specs.
  /// [templateLibraries] Configures the installation of the Template Library.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent({
    required this.bundles,
    required this.templateLibraries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>, List<Map<String, dynamic>>>(bundles, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateLibraries': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>, List<Map<String, dynamic>>>(templateLibraries, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContent(
      bundles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>(map['bundles']!, (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap((value as Map).cast<String, dynamic>()))),
      templateLibraries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>(map['templateLibraries']!, (value) => GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

