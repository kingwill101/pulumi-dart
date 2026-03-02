// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config_installation.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfig {
  /// Configures the manner in which the template library is installed on the cluster.
  final pulumi.Input<PolicyControllerTemplateLibraryConfigInstallation>? installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfig].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfig({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': ?pulumi.Input.mapOptionalInputValue<PolicyControllerTemplateLibraryConfigInstallation, String>(installation, (value) => value.value),
    };
  }

  factory PolicyControllerTemplateLibraryConfig.fromMap(Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfig(
      installation: map['installation'] == null ? null : (PolicyControllerTemplateLibraryConfigInstallation.fromValue(map['installation']! as String)).input(),
    );
  }
}

