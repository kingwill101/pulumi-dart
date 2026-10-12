// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition {
  /// (Output)
  /// The Python code to execute for the tool.
  final pulumi.Input<String?>? pythonCode;

  /// Creates a new [AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition].
  /// [pythonCode] (Output)
  const AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition({
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pythonCode': ?pythonCode,
    };
  }

  factory AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentTransferRuleDeterministicTransferPythonCodeCondition(
      pythonCode: (() { final guardedValue = map['pythonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
