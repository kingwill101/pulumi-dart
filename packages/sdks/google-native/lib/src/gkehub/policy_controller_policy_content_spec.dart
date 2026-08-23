// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config.dart';

/// PolicyContentSpec defines the user's desired content configuration on the cluster.
class PolicyControllerPolicyContentSpec {
  /// map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  final pulumi.Input<Map<String, String>>? bundles;
  /// Configures the installation of the Template Library.
  final pulumi.Input<PolicyControllerTemplateLibraryConfig>? templateLibrary;

  /// Creates a new [PolicyControllerPolicyContentSpec].
  /// [bundles] map of bundle name to BundleInstallSpec. The bundle name maps to the `bundleName` key in the `policycontroller.gke.io/constraintData` annotation on a constraint.
  /// [templateLibrary] Configures the installation of the Template Library.
  const PolicyControllerPolicyContentSpec({
    this.bundles,
    this.templateLibrary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': ?bundles,
      'templateLibrary': ?pulumi.Input.mapOptionalInputValue<PolicyControllerTemplateLibraryConfig, Map<String, dynamic>>(templateLibrary, (value) => value.toMap()),
    };
  }

  factory PolicyControllerPolicyContentSpec.fromMap(Map<String, dynamic> map) {
    return PolicyControllerPolicyContentSpec(
      bundles: (() { final guardedValue = map['bundles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateLibrary: (() { final guardedValue = map['templateLibrary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyControllerTemplateLibraryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
