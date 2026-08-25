// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_cluster_condition.dart';
import 'workstation_cluster_domain_config.dart';
import 'workstation_cluster_private_cluster_config.dart';

/// Input properties used for looking up and filtering WorkstationCluster resources.
class WorkstationClusterState {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationClusterCondition>?>? conditions;
  /// The private IP address of the control plane for this workstation cluster.
  /// Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  final pulumi.Input<String?>? controlPlaneIp;
  /// Time when this resource was created.
  final pulumi.Input<String?>? createTime;
  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// Details can be found in the conditions field.
  final pulumi.Input<bool?>? degraded;
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
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location where the workstation cluster should reside.
  final pulumi.Input<String?>? location;
  /// The name of the cluster resource.
  final pulumi.Input<String?>? name;
  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String?>? network;
  /// Configuration for private cluster.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterPrivateClusterConfig?>? privateClusterConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  final pulumi.Input<String?>? subnetwork;
  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  final pulumi.Input<Map<String, String>?>? tags;
  /// The system-generated UID of the resource.
  final pulumi.Input<String?>? uid;
  /// Specifies the redirect URL for unauthorized requests received by workstation VMs in this cluster.
  /// Redirects to this endpoint will send a base64 encoded `state` query param containing the target workstation name and original request hostname. The endpoint is responsible for retrieving a token using `GenerateAccessToken` and redirecting back to the original hostname with the token.
  final pulumi.Input<String?>? workstationAuthorizationUrl;
  /// ID to use for the workstation cluster.
  final pulumi.Input<String?>? workstationClusterId;
  /// Specifies the launch URL for workstations in this cluster. Requests sent to unstarted workstations will be redirected to this URL.
  /// Requests redirected to the launch endpoint will be sent with a `workstation` query parameter containing the full workstation resource. The launch endpoint is responsible for starting the workstation, polling it until it reaches `STATE_RUNNING`, and then issuing a redirect to the workstation's host URL.
  final pulumi.Input<String?>? workstationLaunchUrl;

  /// Creates a new [WorkstationClusterState].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [conditions] Status conditions describing the current resource state.
  /// [controlPlaneIp] The private IP address of the control plane for this workstation cluster.
  /// [createTime] Time when this resource was created.
  /// [degraded] Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name for this resource.
  /// [domainConfig] Configuration options for a custom domain.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Checksum computed by the server.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation cluster should reside.
  /// [name] The name of the cluster resource.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [subnetwork] Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// [tags] Resource manager tags bound to this resource.
  /// [uid] The system-generated UID of the resource.
  /// [workstationAuthorizationUrl] Specifies the redirect URL for unauthorized requests received by workstation VMs in this cluster.
  /// [workstationClusterId] ID to use for the workstation cluster.
  /// [workstationLaunchUrl] Specifies the launch URL for workstations in this cluster. Requests sent to unstarted workstations will be redirected to this URL.
  const WorkstationClusterState({
    this.annotations,
    this.conditions,
    this.controlPlaneIp,
    this.createTime,
    this.degraded,
    this.deletionPolicy,
    this.displayName,
    this.domainConfig,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.privateClusterConfig,
    this.project,
    this.pulumiLabels,
    this.subnetwork,
    this.tags,
    this.uid,
    this.workstationAuthorizationUrl,
    this.workstationClusterId,
    this.workstationLaunchUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<WorkstationClusterCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<WorkstationClusterCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneIp': ?controlPlaneIp,
      'createTime': ?createTime,
      'degraded': ?degraded,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'domainConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationClusterDomainConfig, Map<String, dynamic>>(domainConfig, (value) => value.toMap()),
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationClusterPrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'subnetwork': ?subnetwork,
      'tags': ?tags,
      'uid': ?uid,
      'workstationAuthorizationUrl': ?workstationAuthorizationUrl,
      'workstationClusterId': ?workstationClusterId,
      'workstationLaunchUrl': ?workstationLaunchUrl,
    };
  }

  factory WorkstationClusterState.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkstationClusterCondition>(guardedValue, (value) => WorkstationClusterCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      controlPlaneIp: (() { final guardedValue = map['controlPlaneIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      degraded: (() { final guardedValue = map['degraded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainConfig: (() { final guardedValue = map['domainConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationClusterDomainConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateClusterConfig: (() { final guardedValue = map['privateClusterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkstationClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationAuthorizationUrl: (() { final guardedValue = map['workstationAuthorizationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationClusterId: (() { final guardedValue = map['workstationClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationLaunchUrl: (() { final guardedValue = map['workstationLaunchUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
