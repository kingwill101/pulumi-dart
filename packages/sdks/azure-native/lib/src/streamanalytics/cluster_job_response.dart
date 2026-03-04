// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A streaming job.
class ClusterJobResponse {
  /// Resource ID of the streaming job.
  final pulumi.Input<String> id;

  /// The current execution state of the streaming job.
  final pulumi.Input<String> jobState;

  /// The number of streaming units that are used by the streaming job.
  final pulumi.Input<int> streamingUnits;

  /// Creates a new [ClusterJobResponse].
  /// [id] Resource ID of the streaming job.
  /// [jobState] The current execution state of the streaming job.
  /// [streamingUnits] The number of streaming units that are used by the streaming job.
  ClusterJobResponse({
    required this.id,
    required this.jobState,
    required this.streamingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jobState': jobState,
      'streamingUnits': streamingUnits,
    };
  }

  factory ClusterJobResponse.fromMap(Map<String, dynamic> map) {
    return ClusterJobResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      jobState: pulumi.Input.fromValue(map['jobState'] as String),
      streamingUnits: pulumi.Input.fromValue(map['streamingUnits'] as int),
    );
  }
}
