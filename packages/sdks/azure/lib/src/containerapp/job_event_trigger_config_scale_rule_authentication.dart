// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobEventTriggerConfigScaleRuleAuthentication {
  /// Name of the secret from which to pull the auth params.
  final pulumi.Input<String> secretName;
  /// Trigger Parameter that uses the secret.
  final pulumi.Input<String> triggerParameter;

  /// Creates a new [JobEventTriggerConfigScaleRuleAuthentication].
  /// [secretName] Name of the secret from which to pull the auth params.
  /// [triggerParameter] Trigger Parameter that uses the secret.
  JobEventTriggerConfigScaleRuleAuthentication({
    required this.secretName,
    required this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'triggerParameter': triggerParameter,
    };
  }

  factory JobEventTriggerConfigScaleRuleAuthentication.fromMap(Map<String, dynamic> map) {
    return JobEventTriggerConfigScaleRuleAuthentication(
      secretName: (map['secretName'] as String).input(),
      triggerParameter: (map['triggerParameter'] as String).input(),
    );
  }
}

