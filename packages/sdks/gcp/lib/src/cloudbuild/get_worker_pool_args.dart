// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_get_worker_pool_get_worker_pool_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_get_worker_pool_get_worker_pool_args_doc}
class GetWorkerPoolArgs {
  /// The Cloud Build location for the worker pool.
  final pulumi.Input<String> location;
  /// User-defined name of the worker pool.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  ///
  /// - - -
  final pulumi.Input<String?>? project;

  /// Creates a new [GetWorkerPoolArgs].
  /// [location] The Cloud Build location for the worker pool.
  /// [name] User-defined name of the worker pool.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetWorkerPoolArgs({
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

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
