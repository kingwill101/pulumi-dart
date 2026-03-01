// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Enrollment resources.
class EnrollmentState {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// A CEL expression identifying which messages this enrollment applies to.
  final pulumi.Input<String>? celMatch;
  /// The creation time.
  final pulumi.Input<String>? createTime;
  /// Destination is the Pipeline that the Enrollment is delivering to. It must
  /// point to the full resource name of a Pipeline. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
  final pulumi.Input<String>? destination;
  /// Resource display name.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The user-provided ID to be assigned to the Enrollment. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String>? enrollmentId;
  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Resource name of the message bus identifying the source of the messages. It
  /// matches the form
  /// projects/{project}/locations/{location}/messageBuses/{messageBus}.
  final pulumi.Input<String>? messageBus;
  /// Resource name of the form
  /// projects/{project}/locations/{location}/enrollments/{enrollment}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String>? uid;
  /// The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EnrollmentState].
  /// [annotations] Resource annotations.
  /// [celMatch] A CEL expression identifying which messages this enrollment applies to.
  /// [createTime] The creation time.
  /// [destination] Destination is the Pipeline that the Enrollment is delivering to. It must
  /// [displayName] Resource display name.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enrollmentId] The user-provided ID to be assigned to the Enrollment. It should match the
  /// [etag] This checksum is computed by the server based on the value of other
  /// [labels] Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [messageBus] Resource name of the message bus identifying the source of the messages. It
  /// [name] Resource name of the form
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] Server assigned unique identifier for the channel. The value is a UUID4
  /// [updateTime] The last-modified time.
  EnrollmentState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? celMatch,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? enrollmentId,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? messageBus,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      celMatch = pulumi.Input.asOptionalInput<String>(celMatch),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enrollmentId = pulumi.Input.asOptionalInput<String>(enrollmentId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      messageBus = pulumi.Input.asOptionalInput<String>(messageBus),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'celMatch': ?celMatch,
      'createTime': ?createTime,
      'destination': ?destination,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'enrollmentId': ?enrollmentId,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'messageBus': ?messageBus,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory EnrollmentState.fromMap(Map<String, dynamic> map) {
    return EnrollmentState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      celMatch: map['celMatch'] == null ? null : pulumi.Output.create<String>(map['celMatch'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enrollmentId: map['enrollmentId'] == null ? null : pulumi.Output.create<String>(map['enrollmentId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      messageBus: map['messageBus'] == null ? null : pulumi.Output.create<String>(map['messageBus'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

