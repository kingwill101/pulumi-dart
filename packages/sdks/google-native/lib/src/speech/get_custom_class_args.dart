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
    required this.customClassId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customClassId': customClassId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCustomClassArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomClassArgs(
      customClassId: pulumi.Input.fromValue(map['customClassId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

