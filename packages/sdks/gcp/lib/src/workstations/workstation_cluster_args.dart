// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_cluster_domain_config.dart';
import 'workstation_cluster_private_cluster_config.dart';

/// {@template pulumi_workstations_workstation_cluster_workstation_cluster_args_doc}
/// The set of arguments for WorkstationCluster.
/// {@endtemplate}
/// {@macro pulumi_workstations_workstation_cluster_workstation_cluster_args_doc}
class WorkstationClusterArgs {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable name for this resource.
  final pulumi.Input<String?>? displayName;
  /// Configuration options for a custom domain.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterDomainConfig?>? domainConfig;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location where the workstation cluster should reside.
  final pulumi.Input<String?>? location;
  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String> network;
  /// Configuration for private cluster.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterPrivateClusterConfig?>? privateClusterConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  final pulumi.Input<String> subnetwork;
  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the redirect URL for unauthorized requests received by workstation VMs in this cluster.
  /// Redirects to this endpoint will send a base64 encoded `state` query param containing the target workstation name and original request hostname. The endpoint is responsible for retrieving a token using `GenerateAccessToken` and redirecting back to the original hostname with the token.
  final pulumi.Input<String?>? workstationAuthorizationUrl;
  /// ID to use for the workstation cluster.
  final pulumi.Input<String> workstationClusterId;
  /// Specifies the launch URL for workstations in this cluster. Requests sent to unstarted workstations will be redirected to this URL.
  /// Requests redirected to the launch endpoint will be sent with a `workstation` query parameter containing the full workstation resource. The launch endpoint is responsible for starting the workstation, polling it until it reaches `STATE_RUNNING`, and then issuing a redirect to the workstation's host URL.
  final pulumi.Input<String?>? workstationLaunchUrl;

  /// Creates a new [WorkstationClusterArgs].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name for this resource.
  /// [domainConfig] Configuration options for a custom domain.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation cluster should reside.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [subnetwork] Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// [tags] Resource manager tags bound to this resource.
  /// [workstationAuthorizationUrl] Specifies the redirect URL for unauthorized requests received by workstation VMs in this cluster.
  /// [workstationClusterId] ID to use for the workstation cluster.
  /// [workstationLaunchUrl] Specifies the launch URL for workstations in this cluster. Requests sent to unstarted workstations will be redirected to this URL.
  const WorkstationClusterArgs({
    this.annotations,
    this.deletionPolicy,
    this.displayName,
    this.domainConfig,
    this.labels,
    this.location,
    required this.network,
    this.privateClusterConfig,
    this.project,
    required this.subnetwork,
    this.tags,
    this.workstationAuthorizationUrl,
    required this.workstationClusterId,
    this.workstationLaunchUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'domainConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationClusterDomainConfig, Map<String, dynamic>>(domainConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'network': network,
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationClusterPrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'subnetwork': subnetwork,
      'tags': ?tags,
      'workstationAuthorizationUrl': ?workstationAuthorizationUrl,
      'workstationClusterId': workstationClusterId,
      'workstationLaunchUrl': ?workstationLaunchUrl,
    };
  }

  factory WorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainConfig: (() { final guardedValue = map['domainConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationClusterDomainConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      privateClusterConfig: (() { final guardedValue = map['privateClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workstationAuthorizationUrl: (() { final guardedValue = map['workstationAuthorizationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationClusterId: pulumi.Input.fromValue(map['workstationClusterId'] as String),
      workstationLaunchUrl: (() { final guardedValue = map['workstationLaunchUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
