// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workstation resources.
class WorkstationState {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Time when this resource was created.
  final pulumi.Input<String>? createTime;
  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  /// [displayName] Human-readable name for this resource.
  /// [effectiveAnnotations] Optional.
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
  WorkstationState({
    this.annotations,
    this.createTime,
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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      env: map['env'] == null ? null : ((map['env']! as Map).cast<String, String>()).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      sourceWorkstation: map['sourceWorkstation'] == null ? null : (map['sourceWorkstation']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      workstationClusterId: map['workstationClusterId'] == null ? null : (map['workstationClusterId']! as String).input(),
      workstationConfigId: map['workstationConfigId'] == null ? null : (map['workstationConfigId']! as String).input(),
      workstationId: map['workstationId'] == null ? null : (map['workstationId']! as String).input(),
    );
  }
}

