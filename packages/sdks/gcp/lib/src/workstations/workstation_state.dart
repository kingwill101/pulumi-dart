// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workstation resources.
class WorkstationState {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Time when this resource was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// 'Client-specified environment variables passed to the workstation container's entrypoint.'
  final pulumi.Input<Map<String, String>>? env;
  /// Host to which clients can send HTTPS traffic that will be received by the workstation.
  /// Authorized traffic will be received to the workstation as HTTP on port 80.
  /// To send traffic to a different port, clients may prefix the host with the destination port in the format "{port}-{host}".
  final pulumi.Input<String>? host;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the workstation parent resources reside.
  final pulumi.Input<String>? location;
  /// Full name of this resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Full resource name of the source workstation from which the workstation's persistent
  /// directories will be cloned from during creation.
  final pulumi.Input<String>? sourceWorkstation;
  /// Current state of the workstation.
  final pulumi.Input<String>? state;
  /// A system-assigned unique identified for this resource.
  final pulumi.Input<String>? uid;
  /// The ID of the parent workstation cluster.
  final pulumi.Input<String>? workstationClusterId;
  /// The ID of the parent workstation cluster config.
  final pulumi.Input<String>? workstationConfigId;
  /// ID to use for the workstation.
  final pulumi.Input<String>? workstationId;

  /// Creates a new [WorkstationState].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [createTime] Time when this resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-readable name for this resource.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [env] 'Client-specified environment variables passed to the workstation container's entrypoint.'
  /// [host] Host to which clients can send HTTPS traffic that will be received by the workstation.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation parent resources reside.
  /// [name] Full name of this resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sourceWorkstation] Full resource name of the source workstation from which the workstation's persistent
  /// [state] Current state of the workstation.
  /// [uid] A system-assigned unique identified for this resource.
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] The ID of the parent workstation cluster config.
  /// [workstationId] ID to use for the workstation.
  const WorkstationState({
    this.annotations,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.env,
    this.host,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.sourceWorkstation,
    this.state,
    this.uid,
    this.workstationClusterId,
    this.workstationConfigId,
    this.workstationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'env': ?env,
      'host': ?host,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'sourceWorkstation': ?sourceWorkstation,
      'state': ?state,
      'uid': ?uid,
      'workstationClusterId': ?workstationClusterId,
      'workstationConfigId': ?workstationConfigId,
      'workstationId': ?workstationId,
    };
  }

  factory WorkstationState.fromMap(Map<String, dynamic> map) {
    return WorkstationState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sourceWorkstation: (() { final guardedValue = map['sourceWorkstation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationClusterId: (() { final guardedValue = map['workstationClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationConfigId: (() { final guardedValue = map['workstationConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationId: (() { final guardedValue = map['workstationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
