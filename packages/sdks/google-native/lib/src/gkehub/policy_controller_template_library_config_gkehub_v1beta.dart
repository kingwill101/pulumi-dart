// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_controller_template_library_config_installation_gkehub_v1beta.dart';

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigGkehubV1beta {
  /// Configures the manner in which the template library is installed on the cluster.
  final pulumi.Input<
    PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta
  >?
  installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigGkehubV1beta].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigGkehubV1beta({this.installation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta,
            String
          >(installation, (value) => value.wireValue),
    };
  }

  factory PolicyControllerTemplateLibraryConfigGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyControllerTemplateLibraryConfigGkehubV1beta(
      installation: (() {
        final guardedValue = map['installation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyControllerTemplateLibraryConfigInstallationGkehubV1beta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
