// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsRuleRuleSettingsForward {
  /// Specify the public Worker ID of the target Worker.
  final pulumi.Input<String> workerId;

  /// Creates a new [TeamsRuleRuleSettingsForward].
  /// [workerId] Specify the public Worker ID of the target Worker.
  const TeamsRuleRuleSettingsForward({
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerId': workerId,
    };
  }

  factory TeamsRuleRuleSettingsForward.fromMap(Map<String, dynamic> map) {
    return TeamsRuleRuleSettingsForward(
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
