// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config_installation.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfig {
  /// Configures the manner in which the template library is installed on the cluster.
  final pulumi.Input<PolicyControllerTemplateLibraryConfigInstallation>? installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfig].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  const PolicyControllerTemplateLibraryConfig({
    this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': ?pulumi.Input.mapOptionalInputValue<PolicyControllerTemplateLibraryConfigInstallation, String>(installation, (value) => value.wireValue),
    };
  }

  factory PolicyControllerTemplateLibraryConfig.fromMap(Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfig(
      installation: (() { final guardedValue = map['installation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyControllerTemplateLibraryConfigInstallation.fromValue(guardedValue as String)); })(),
    );
  }
}

