// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudrunv2_get_worker_pool_get_worker_pool_args_doc}
/// Arguments for getWorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudrunv2_get_worker_pool_get_worker_pool_args_doc}
class GetWorkerPoolArgs {
  /// The location of the instance. eg us-central1
  ///
  /// - - -
  final pulumi.Input<String>? location;
  /// The name of the Cloud Run v2 Worker Pool.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWorkerPoolArgs].
  /// [location] The location of the instance. eg us-central1
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [project] The project in which the resource belongs. If it
  GetWorkerPoolArgs({
    this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetWorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

