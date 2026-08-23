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
  const AnnotationArgs({
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': ?pulumi.Input.mapOptionalInputValue<AnnotationType, String>(type, (value) => value.wireValue),
    };
  }

  factory AnnotationArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnnotationType.fromValue(guardedValue as String)); })(),
    );
  }
}
