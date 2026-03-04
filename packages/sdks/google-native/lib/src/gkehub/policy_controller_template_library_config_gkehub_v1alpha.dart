// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config_installation_gkehub_v1alpha.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigGkehubV1alpha {
  /// Configures the manner in which the template library is installed on the cluster.
  final pulumi.Input<
    PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha
  >?
  installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigGkehubV1alpha].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigGkehubV1alpha({this.installation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha,
            String
          >(installation, (value) => value.wireValue),
    };
  }

  factory PolicyControllerTemplateLibraryConfigGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyControllerTemplateLibraryConfigGkehubV1alpha(
      installation: (() {
        final guardedValue = map['installation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyControllerTemplateLibraryConfigInstallationGkehubV1alpha.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
