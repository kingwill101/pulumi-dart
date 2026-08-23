// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_enrollment_enrollment_args_doc}
/// The set of arguments for Enrollment.
/// {@endtemplate}
/// {@macro pulumi_eventarc_enrollment_enrollment_args_doc}
class EnrollmentArgs {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// A CEL expression identifying which messages this enrollment applies to.
  final pulumi.Input<String> celMatch;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Destination is the Pipeline that the Enrollment is delivering to. It must
  /// point to the full resource name of a Pipeline. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
  final pulumi.Input<String> destination;
  /// Resource display name.
  final pulumi.Input<String>? displayName;
  /// The user-provided ID to be assigned to the Enrollment. It should match the
  /// format `^a-z?$`.
  final pulumi.Input<String> enrollmentId;
  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Resource name of the message bus identifying the source of the messages. It
  /// matches the form
  /// projects/{project}/locations/{location}/messageBuses/{messageBus}.
  final pulumi.Input<String> messageBus;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EnrollmentArgs].
  /// [annotations] Resource annotations.
  /// [celMatch] A CEL expression identifying which messages this enrollment applies to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [destination] Destination is the Pipeline that the Enrollment is delivering to. It must
  /// [displayName] Resource display name.
  /// [enrollmentId] The user-provided ID to be assigned to the Enrollment. It should match the
  /// [labels] Resource labels.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [messageBus] Resource name of the message bus identifying the source of the messages. It
  /// [project] The ID of the project in which the resource belongs.
  const EnrollmentArgs({
    this.annotations,
    required this.celMatch,
    this.deletionPolicy,
    required this.destination,
    this.displayName,
    required this.enrollmentId,
    this.labels,
    required this.location,
    required this.messageBus,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'celMatch': celMatch,
      'deletionPolicy': ?deletionPolicy,
      'destination': destination,
      'displayName': ?displayName,
      'enrollmentId': enrollmentId,
      'labels': ?labels,
      'location': location,
      'messageBus': messageBus,
      'project': ?project,
    };
  }

  factory EnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return EnrollmentArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      celMatch: pulumi.Input.fromValue(map['celMatch'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enrollmentId: pulumi.Input.fromValue(map['enrollmentId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      messageBus: pulumi.Input.fromValue(map['messageBus'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
