// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference {
  /// A human readable description of the diff, showing the actual output vs expected output.
  final pulumi.Input<String>? description;
  /// The type of diff.
  /// * INTENT: The intent.
  /// * PAGE: The page.
  /// * PARAMETERS: The parameters.
  /// * UTTERANCE: The message utterance.
  /// * FLOW: The flow.
  /// Possible values are: `INTENT`, `PAGE`, `PARAMETERS`, `UTTERANCE`, `FLOW`.
  final pulumi.Input<String>? type;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference].
  /// [description] A human readable description of the diff, showing the actual output vs expected output.
  /// [type] The type of diff.
  const CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference({
    this.description,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'type': ?type,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

