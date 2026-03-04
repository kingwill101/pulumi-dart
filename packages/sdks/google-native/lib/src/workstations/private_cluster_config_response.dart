// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for private workstation clusters.
class PrivateClusterConfigResponse {
  /// Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  final pulumi.Input<List<String>> allowedProjects;

  /// Hostname for the workstation cluster. This field will be populated only when private endpoint is enabled. To access workstations in the workstation cluster, create a new DNS zone mapping this domain name to an internal IP address and a forwarding rule mapping that address to the service attachment.
  final pulumi.Input<String> clusterHostname;

  /// Immutable. Whether Workstations endpoint is private.
  final pulumi.Input<bool> enablePrivateEndpoint;

  /// Service attachment URI for the workstation cluster. The service attachemnt is created when private endpoint is enabled. To access workstations in the workstation cluster, configure access to the managed service using [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).
  final pulumi.Input<String> serviceAttachmentUri;

  /// Creates a new [PrivateClusterConfigResponse].
  /// [allowedProjects] Optional. Additional projects that are allowed to attach to the workstation cluster's service attachment. By default, the workstation cluster's project and the VPC host project (if different) are allowed.
  /// [clusterHostname] Hostname for the workstation cluster. This field will be populated only when private endpoint is enabled. To access workstations in the workstation cluster, create a new DNS zone mapping this domain name to an internal IP address and a forwarding rule mapping that address to the service attachment.
  /// [enablePrivateEndpoint] Immutable. Whether Workstations endpoint is private.
  /// [serviceAttachmentUri] Service attachment URI for the workstation cluster. The service attachemnt is created when private endpoint is enabled. To access workstations in the workstation cluster, configure access to the managed service using [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).
  PrivateClusterConfigResponse({
    required this.allowedProjects,
    required this.clusterHostname,
    required this.enablePrivateEndpoint,
    required this.serviceAttachmentUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedProjects': allowedProjects,
      'clusterHostname': clusterHostname,
      'enablePrivateEndpoint': enablePrivateEndpoint,
      'serviceAttachmentUri': serviceAttachmentUri,
    };
  }

  factory PrivateClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivateClusterConfigResponse(
      allowedProjects: pulumi.Input.fromValue(
        (map['allowedProjects'] as List).cast<String>(),
      ),
      clusterHostname: pulumi.Input.fromValue(map['clusterHostname'] as String),
      enablePrivateEndpoint: pulumi.Input.fromValue(
        map['enablePrivateEndpoint'] as bool,
      ),
      serviceAttachmentUri: pulumi.Input.fromValue(
        map['serviceAttachmentUri'] as String,
      ),
    );
  }
}
