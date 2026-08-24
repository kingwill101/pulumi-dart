// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectCanonicalDeploymentLatestStage {
  /// When the stage ended.
  final pulumi.Input<String?>? endedOn;
  /// The current build stage.
  /// Available values: "queued", "initialize", "cloneRepo", "build", "deploy".
  final pulumi.Input<String?>? name;
  /// When the stage started.
  final pulumi.Input<String?>? startedOn;
  /// State of the current stage.
  /// Available values: "success", "idle", "active", "failure", "canceled".
  final pulumi.Input<String?>? status;

  /// Creates a new [PagesProjectCanonicalDeploymentLatestStage].
  /// [endedOn] When the stage ended.
  /// [name] The current build stage.
  /// [startedOn] When the stage started.
  /// [status] State of the current stage.
  const PagesProjectCanonicalDeploymentLatestStage({
    this.endedOn,
    this.name,
    this.startedOn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': ?endedOn,
      'name': ?name,
      'startedOn': ?startedOn,
      'status': ?status,
    };
  }

  factory PagesProjectCanonicalDeploymentLatestStage.fromMap(Map<String, dynamic> map) {
    return PagesProjectCanonicalDeploymentLatestStage(
      endedOn: (() { final guardedValue = map['endedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedOn: (() { final guardedValue = map['startedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
