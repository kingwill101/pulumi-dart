// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_type.dart';

/// {@template pulumi_rapidmigrationassessment_v1_annotation_args_doc}
/// The set of arguments for Annotation.
/// {@endtemplate}
/// {@macro pulumi_rapidmigrationassessment_v1_annotation_args_doc}
class AnnotationArgs {
  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// name of resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests.
  final pulumi.Input<String>? requestId;
  /// Type of an annotation.
  final pulumi.Input<AnnotationType>? type;

  /// Creates a new [AnnotationArgs].
  /// [labels] Labels as key value pairs.
  /// [location] Optional.
  /// [name] name of resource.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests.
  /// [type] Type of an annotation.
  AnnotationArgs({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<AnnotationType>? type,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asOptionalInput<AnnotationType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': ?pulumi.Input.mapOptionalInputValue<AnnotationType, String>(type, (value) => value.value),
    };
  }

  factory AnnotationArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<AnnotationType>(AnnotationType.fromValue(map['type'] as String)),
    );
  }
}

