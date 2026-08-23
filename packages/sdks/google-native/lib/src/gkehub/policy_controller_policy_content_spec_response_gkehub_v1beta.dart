// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config_response_gkehub_v1beta.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpecResponseGkehubV1beta {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final pulumi.Input<Map<String, String>> bundles;
  /// Configures the installation of the Template Library.
  final pulumi.Input<PolicyControllerTemplateLibraryConfigResponseGkehubV1beta> templateLibrary;

  /// Creates a new [PolicyControllerPolicyContentSpecResponseGkehubV1beta].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library.
  const PolicyControllerPolicyContentSpecResponseGkehubV1beta({
    required this.bundles,
    required this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': bundles,
      'templateLibrary': pulumi.Input.mapInputValue<PolicyControllerTemplateLibraryConfigResponseGkehubV1beta, Map<String, dynamic>>(templateLibrary, (value) => value.toMap()),
    };
  }

  factory PolicyControllerPolicyContentSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpecResponseGkehubV1beta(
      bundles: pulumi.Input.fromValue((map['bundles'] as Map).cast<String, String>()),
      templateLibrary: pulumi.Input.fromValue(PolicyControllerTemplateLibraryConfigResponseGkehubV1beta.fromMap((map['templateLibrary']! as Map).cast<String, dynamic>())),
    );
  }
}
