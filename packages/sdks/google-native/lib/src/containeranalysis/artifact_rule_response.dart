// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an object to declare an in-toto artifact rule
class ArtifactRuleResponse {
  final pulumi.Input<List<String>> artifactRule;

  /// Creates a new [ArtifactRuleResponse].
  /// [artifactRule] Required.
  ArtifactRuleResponse({
    required this.artifactRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactRule': artifactRule,
    };
  }

  factory ArtifactRuleResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactRuleResponse(
      artifactRule: pulumi.Input.fromValue((map['artifactRule'] as List).cast<String>()),
    );
  }
}

