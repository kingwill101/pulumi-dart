// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy defines the configuration of how audit events are logged
class PolicyPatch {
  /// The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
  final pulumi.Input<String>? level;
  /// Stages is a list of stages for which events are created.
  final pulumi.Input<List<String>>? stages;

  /// Creates a new [PolicyPatch].
  /// [level] The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
  /// [stages] Stages is a list of stages for which events are created.
  const PolicyPatch({
    this.level,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'stages': ?stages,
    };
  }

  factory PolicyPatch.fromMap(Map<String, dynamic> map) {
    return PolicyPatch(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
