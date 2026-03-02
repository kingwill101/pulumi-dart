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
      customClassId: (map['customClassId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

