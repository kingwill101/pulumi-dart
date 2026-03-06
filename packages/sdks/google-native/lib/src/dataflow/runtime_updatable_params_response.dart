// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional job parameters that can only be updated during runtime using the projects.jobs.update method. These fields have no effect when specified during job creation.
class RuntimeUpdatableParamsResponse {
  /// The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
  final pulumi.Input<int> maxNumWorkers;
  /// The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
  final pulumi.Input<int> minNumWorkers;

  /// Creates a new [RuntimeUpdatableParamsResponse].
  /// [maxNumWorkers] The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
  /// [minNumWorkers] The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
  const RuntimeUpdatableParamsResponse({
    required this.maxNumWorkers,
    required this.minNumWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNumWorkers': maxNumWorkers,
      'minNumWorkers': minNumWorkers,
    };
  }

  factory RuntimeUpdatableParamsResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeUpdatableParamsResponse(
      maxNumWorkers: pulumi.Input.fromValue(map['maxNumWorkers'] as int),
      minNumWorkers: pulumi.Input.fromValue(map['minNumWorkers'] as int),
    );
  }
}

