// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentTransferRuleDeterministicTransferPythonCodeCondition {
  /// The python code to execute. The function must be named
  /// `shouldTriggerTransferCallback`.
  final pulumi.Input<String> pythonCode;

  /// Creates a new [AgentTransferRuleDeterministicTransferPythonCodeCondition].
  /// [pythonCode] The python code to execute. The function must be named
  const AgentTransferRuleDeterministicTransferPythonCodeCondition({
    required this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pythonCode': pythonCode,
    };
  }

  factory AgentTransferRuleDeterministicTransferPythonCodeCondition.fromMap(Map<String, dynamic> map) {
    return AgentTransferRuleDeterministicTransferPythonCodeCondition(
      pythonCode: pulumi.Input.fromValue(map['pythonCode'] as String),
    );
  }
}
