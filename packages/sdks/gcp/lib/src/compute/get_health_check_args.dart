// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_health_check_get_health_check_args_doc}
/// Arguments for getHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_get_health_check_get_health_check_args_doc}
class GetHealthCheckArgs {
  /// Name of the resource.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetHealthCheckArgs].
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs. If it
  GetHealthCheckArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

