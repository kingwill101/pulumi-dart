// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudrun_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_cloudrun_get_service_get_service_args_doc}
class GetServiceArgs {
  /// The location of the cloud run instance. eg us-central1
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetServiceArgs].
  /// [location] The location of the cloud run instance. eg us-central1
  /// [name] The name of the Cloud Run Service.
  /// [project] The project in which the resource belongs. If it
  GetServiceArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

