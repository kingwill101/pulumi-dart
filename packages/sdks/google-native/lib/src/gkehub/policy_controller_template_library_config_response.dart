// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigResponse {
  /// Configures the manner in which the template library is installed on the cluster.
  final pulumi.Input<String> installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigResponse].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  const PolicyControllerTemplateLibraryConfigResponse({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': installation,
    };
  }

  factory PolicyControllerTemplateLibraryConfigResponse.fromMap(Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfigResponse(
      installation: pulumi.Input.fromValue(map['installation'] as String),
    );
  }
}

