// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_policycontroller_policy_controller_hub_config_policy_content_bundle.dart';
import 'feature_membership_policycontroller_policy_controller_hub_config_policy_content_template_library.dart';

class FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final pulumi.Input<List<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>>? bundles;
  /// Configures the installation of the Template Library. Structure is documented below.
  final pulumi.Input<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary>? templateLibrary;

  /// Creates a new [FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library. Structure is documented below.
  FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent({
    this.bundles,
    this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': ?pulumi.Input.mapOptionalInputValue<List<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>, List<Map<String, dynamic>>>(bundles, (value) => pulumi.Input.encodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateLibrary': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary, Map<String, dynamic>>(templateLibrary, (value) => value.toMap()),
    };
  }

  factory FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContent(
      bundles: map['bundles'] == null ? null : (pulumi.Input.decodeList<FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle>(map['bundles']!, (value) => FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentBundle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateLibrary: map['templateLibrary'] == null ? null : (FeatureMembershipPolicycontrollerPolicyControllerHubConfigPolicyContentTemplateLibrary.fromMap((map['templateLibrary']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

