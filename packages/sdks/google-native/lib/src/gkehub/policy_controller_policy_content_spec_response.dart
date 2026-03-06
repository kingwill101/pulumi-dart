// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config_response.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpecResponse {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final pulumi.Input<Map<String, String>> bundles;
  /// Configures the installation of the Template Library.
  final pulumi.Input<PolicyControllerTemplateLibraryConfigResponse> templateLibrary;

  /// Creates a new [PolicyControllerPolicyContentSpecResponse].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library.
  const PolicyControllerPolicyContentSpecResponse({
    required this.bundles,
    required this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': bundles,
      'templateLibrary': pulumi.Input.mapInputValue<PolicyControllerTemplateLibraryConfigResponse, Map<String, dynamic>>(templateLibrary, (value) => value.toMap()),
    };
  }

  factory PolicyControllerPolicyContentSpecResponse.fromMap(Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpecResponse(
      bundles: pulumi.Input.fromValue((map['bundles'] as Map).cast<String, String>()),
      templateLibrary: pulumi.Input.fromValue(PolicyControllerTemplateLibraryConfigResponse.fromMap((map['templateLibrary']! as Map).cast<String, dynamic>())),
    );
  }
}

