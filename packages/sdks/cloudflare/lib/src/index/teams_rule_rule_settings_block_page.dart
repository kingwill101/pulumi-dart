// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsBlockPage {
  /// Specify whether to pass the context information as query parameters.
  final pulumi.Input<bool?>? includeContext;
  /// Specify the URI to which the user is redirected.
  final pulumi.Input<String> targetUri;

  /// Creates a new [TeamsRuleRuleSettingsBlockPage].
  /// [includeContext] Specify whether to pass the context information as query parameters.
  /// [targetUri] Specify the URI to which the user is redirected.
  const TeamsRuleRuleSettingsBlockPage({
    this.includeContext,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeContext': ?includeContext,
      'targetUri': targetUri,
    };
  }

  factory TeamsRuleRuleSettingsBlockPage.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsBlockPage(
      includeContext: (() { final guardedValue = map['includeContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
