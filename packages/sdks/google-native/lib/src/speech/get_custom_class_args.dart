// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_speech_v1_get_custom_class_args_doc}
/// Arguments for getCustomClass.
/// {@endtemplate}
/// {@macro pulumi_speech_v1_get_custom_class_args_doc}
class GetCustomClassArgs {
  final pulumi.Input<String> customClassId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomClassArgs].
  /// [customClassId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCustomClassArgs({
    required pulumi.Output<String> customClassId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      customClassId = pulumi.Input.asInput<String>(customClassId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customClassId': customClassId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCustomClassArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomClassArgs(
      customClassId: pulumi.Output.create<String>(map['customClassId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

