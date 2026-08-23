// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2_get_control_args_doc}
/// Arguments for getControl.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_get_control_args_doc}
class GetControlArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> controlId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetControlArgs].
  /// [catalogId] Required.
  /// [controlId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetControlArgs({
    required this.catalogId,
    required this.controlId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'controlId': controlId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetControlArgs.fromMap(Map<String, dynamic> map) {
    return GetControlArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      controlId: pulumi.Input.fromValue(map['controlId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
