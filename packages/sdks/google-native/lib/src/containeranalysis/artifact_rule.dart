// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an object to declare an in-toto artifact rule
class ArtifactRule {
  final pulumi.Input<List<String>>? artifactRule;

  /// Creates a new [ArtifactRule].
  /// [artifactRule] Optional.
  ArtifactRule({
    this.artifactRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactRule': ?artifactRule,
    };
  }

  factory ArtifactRule.fromMap(Map<String, dynamic> map) {
    return ArtifactRule(
      artifactRule: (() { final guardedValue = map['artifactRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

