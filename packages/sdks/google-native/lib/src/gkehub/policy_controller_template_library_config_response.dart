// ignore_for_file: unused_element, unnecessary_cast


/// The config specifying which default library templates to install.
class PolicyControllerTemplateLibraryConfigResponse {
  /// Configures the manner in which the template library is installed on the cluster.
  final String installation;

  /// Creates a new [PolicyControllerTemplateLibraryConfigResponse].
  /// [installation] Configures the manner in which the template library is installed on the cluster.
  PolicyControllerTemplateLibraryConfigResponse({
    required this.installation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installation': installation,
    };
  }

  factory PolicyControllerTemplateLibraryConfigResponse.fromMap(Map<String, dynamic> map) {
    return PolicyControllerTemplateLibraryConfigResponse(
      installation: map['installation'] as String,
    );
  }
}

