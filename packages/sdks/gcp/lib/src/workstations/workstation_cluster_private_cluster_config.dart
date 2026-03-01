// ignore_for_file: unused_element, unnecessary_cast


class WorkstationClusterPrivateClusterConfig {
  /// Additional project IDs that are allowed to attach to the workstation cluster's service attachment.
  /// By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  final List<String>? allowedProjects;
  /// (Output)
  /// Hostname for the workstation cluster.
  /// This field will be populated only when private endpoint is enabled.
  /// To access workstations in the cluster, create a new DNS zone mapping this domain name to an internal IP address and a forwarding rule mapping that address to the service attachment.
  final String? clusterHostname;
  /// Whether Workstations endpoint is private.
  final bool enablePrivateEndpoint;
  /// (Output)
  /// Service attachment URI for the workstation cluster.
  /// The service attachment is created when private endpoint is enabled.
  /// To access workstations in the cluster, configure access to the managed service using (Private Service Connect)[https://cloud.google.com/vpc/docs/configure-private-service-connect-services].
  final String? serviceAttachmentUri;

  /// Creates a new [WorkstationClusterPrivateClusterConfig].
  /// [allowedProjects] Additional project IDs that are allowed to attach to the workstation cluster's service attachment.
  /// [clusterHostname] (Output)
  /// [enablePrivateEndpoint] Whether Workstations endpoint is private.
  /// [serviceAttachmentUri] (Output)
  WorkstationClusterPrivateClusterConfig({
    this.allowedProjects,
    this.clusterHostname,
    required this.enablePrivateEndpoint,
    this.serviceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedProjects': ?allowedProjects,
      'clusterHostname': ?clusterHostname,
      'enablePrivateEndpoint': enablePrivateEndpoint,
      'serviceAttachmentUri': ?serviceAttachmentUri,
    };
  }

  factory WorkstationClusterPrivateClusterConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterPrivateClusterConfig(
      allowedProjects: map['allowedProjects'] == null ? null : (map['allowedProjects'] as List).cast<String>(),
      clusterHostname: map['clusterHostname'] == null ? null : map['clusterHostname'] as String,
      enablePrivateEndpoint: map['enablePrivateEndpoint'] as bool,
      serviceAttachmentUri: map['serviceAttachmentUri'] == null ? null : map['serviceAttachmentUri'] as String,
    );
  }
}

