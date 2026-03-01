// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_template_library_config_installation.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfig {
  /// Configures the manner in which the template library is installed on the cluster.
  final PolicyControllerTemplateLibraryConfigInstallation? installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfig].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfig({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': ?installation == null ? null : installation!.value,
    };
  }

  factory PolicyControllerTemplateLibraryConfig.fromMap(Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfig(
      installation: map['installation'] == null ? null : PolicyControllerTemplateLibraryConfigInstallation.fromValue(map['installation'] as String),
    );
  }
}

