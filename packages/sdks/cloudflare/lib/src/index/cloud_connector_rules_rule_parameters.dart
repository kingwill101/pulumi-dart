// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudConnectorRulesRuleParameters {
  /// Host to perform Cloud Connection to
  final pulumi.Input<String?>? host;

  /// Creates a new [CloudConnectorRulesRuleParameters].
  /// [host] Host to perform Cloud Connection to
  const CloudConnectorRulesRuleParameters({
    this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
    };
  }

  factory CloudConnectorRulesRuleParameters.fromMap(Map<String, dynamic> map) {
    return CloudConnectorRulesRuleParameters(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
