// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSemanticGovernancePolicyAgentResponseCustomization {
  /// Custom message shown to the end user when the policy check results in a denial. Use this
  /// to explain the rationale to the user. Max 1000 characters.
  final pulumi.Input<String?>? denialMessage;

  /// Creates a new [AiSemanticGovernancePolicyAgentResponseCustomization].
  /// [denialMessage] Custom message shown to the end user when the policy check results in a denial. Use this
  const AiSemanticGovernancePolicyAgentResponseCustomization({
    this.denialMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denialMessage': ?denialMessage,
    };
  }

  factory AiSemanticGovernancePolicyAgentResponseCustomization.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyAgentResponseCustomization(
      denialMessage: (() { final guardedValue = map['denialMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
