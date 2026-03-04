// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityTestRunReachabilityDetailTraceStep {
  /// (Output)
  /// If this step leads to the final state Drop.
  final pulumi.Input<bool> causesDrop;

  /// (Output)
  /// Description of the connectivity test step.
  final pulumi.Input<String> description;

  /// (Output)
  /// Project ID of the connectivity test step.
  final pulumi.Input<String> projectId;

  /// (Output)
  /// State of the connectivity test step.
  final pulumi.Input<String> state;

  /// Creates a new [GetConnectivityTestRunReachabilityDetailTraceStep].
  /// [causesDrop] (Output)
  /// [description] (Output)
  /// [projectId] (Output)
  /// [state] (Output)
  GetConnectivityTestRunReachabilityDetailTraceStep({
    required this.causesDrop,
    required this.description,
    required this.projectId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'causesDrop': causesDrop,
      'description': description,
      'projectId': projectId,
      'state': state,
    };
  }

  factory GetConnectivityTestRunReachabilityDetailTraceStep.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestRunReachabilityDetailTraceStep(
      causesDrop: pulumi.Input.fromValue(map['causesDrop'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
