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
  PolicyPatch({
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
      level: map['level'] == null ? null : (map['level']! as String).input(),
      stages: map['stages'] == null ? null : ((map['stages']! as List).cast<String>()).input(),
    );
  }
}

