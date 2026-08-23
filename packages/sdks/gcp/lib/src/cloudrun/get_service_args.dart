// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudrun_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_cloudrun_get_service_get_service_args_doc}
class GetServiceArgs {
  /// The location of the cloud run instance. eg us-central1
  final pulumi.Input<String> location;
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetServiceArgs].
  /// [location] The location of the cloud run instance. eg us-central1
  /// [name] Name must be unique within a Google Cloud project and region.
  /// [project] The ID of the project in which the resource belongs.
  const GetServiceArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
