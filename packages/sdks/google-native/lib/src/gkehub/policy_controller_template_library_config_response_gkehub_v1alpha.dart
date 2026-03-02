// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha {
  /// Configures the manner in which the template library is installed on the cluster.
  final pulumi.Input<String> installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': installation,
    };
  }

  factory PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfigResponseGkehubV1alpha(
      installation: (map['installation'] as String).input(),
    );
  }
}

