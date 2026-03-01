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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? env,
    pulumi.Output<String>? host,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? sourceWorkstation,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? workstationClusterId,
    pulumi.Output<String>? workstationConfigId,
    pulumi.Output<String>? workstationId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      env = pulumi.Input.asOptionalInput<Map<String, String>>(env),
      host = pulumi.Input.asOptionalInput<String>(host),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      sourceWorkstation = pulumi.Input.asOptionalInput<String>(sourceWorkstation),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      workstationClusterId = pulumi.Input.asOptionalInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asOptionalInput<String>(workstationConfigId),
      workstationId = pulumi.Input.asOptionalInput<String>(workstationId);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      env: map['env'] == null ? null : pulumi.Output.create<Map<String, String>>((map['env'] as Map).cast<String, String>()),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      sourceWorkstation: map['sourceWorkstation'] == null ? null : pulumi.Output.create<String>(map['sourceWorkstation'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      workstationClusterId: map['workstationClusterId'] == null ? null : pulumi.Output.create<String>(map['workstationClusterId'] as String),
      workstationConfigId: map['workstationConfigId'] == null ? null : pulumi.Output.create<String>(map['workstationConfigId'] as String),
      workstationId: map['workstationId'] == null ? null : pulumi.Output.create<String>(map['workstationId'] as String),
    );
  }
}

