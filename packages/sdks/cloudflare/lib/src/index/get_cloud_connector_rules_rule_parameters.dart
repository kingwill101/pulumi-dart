// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudConnectorRulesRuleParameters {
  /// Host to perform Cloud Connection to
  final pulumi.Input<String> host;

  /// Creates a new [GetCloudConnectorRulesRuleParameters].
  /// [host] Host to perform Cloud Connection to
  const GetCloudConnectorRulesRuleParameters({
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
    };
  }

  factory GetCloudConnectorRulesRuleParameters.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorRulesRuleParameters(
      host: pulumi.Input.fromValue(map['host'] as String),
    );
  }
}
