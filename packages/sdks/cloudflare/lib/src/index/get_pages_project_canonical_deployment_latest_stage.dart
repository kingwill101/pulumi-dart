// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectCanonicalDeploymentLatestStage {
  /// When the stage ended.
  final pulumi.Input<String> endedOn;
  /// The current build stage.
  /// Available values: "queued", "initialize", "cloneRepo", "build", "deploy".
  final pulumi.Input<String> name;
  /// When the stage started.
  final pulumi.Input<String> startedOn;
  /// State of the current stage.
  /// Available values: "success", "idle", "active", "failure", "canceled".
  final pulumi.Input<String> status;

  /// Creates a new [GetPagesProjectCanonicalDeploymentLatestStage].
  /// [endedOn] When the stage ended.
  /// [name] The current build stage.
  /// [startedOn] When the stage started.
  /// [status] State of the current stage.
  const GetPagesProjectCanonicalDeploymentLatestStage({
    required this.endedOn,
    required this.name,
    required this.startedOn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'name': name,
      'startedOn': startedOn,
      'status': status,
    };
  }

  factory GetPagesProjectCanonicalDeploymentLatestStage.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectCanonicalDeploymentLatestStage(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
