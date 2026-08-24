// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsRedirect {
  /// Specify whether to pass the context information as query parameters.
  final pulumi.Input<bool?>? includeContext;
  /// Specify whether to append the path and query parameters from the original request to target_uri.
  final pulumi.Input<bool?>? preservePathAndQuery;
  /// Specify the URI to which the user is redirected.
  final pulumi.Input<String> targetUri;

  /// Creates a new [TeamsRuleRuleSettingsRedirect].
  /// [includeContext] Specify whether to pass the context information as query parameters.
  /// [preservePathAndQuery] Specify whether to append the path and query parameters from the original request to target_uri.
  /// [targetUri] Specify the URI to which the user is redirected.
  const TeamsRuleRuleSettingsRedirect({
    this.includeContext,
    this.preservePathAndQuery,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeContext': ?includeContext,
      'preservePathAndQuery': ?preservePathAndQuery,
      'targetUri': targetUri,
    };
  }

  factory TeamsRuleRuleSettingsRedirect.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsRedirect(
      includeContext: (() { final guardedValue = map['includeContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preservePathAndQuery: (() { final guardedValue = map['preservePathAndQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
