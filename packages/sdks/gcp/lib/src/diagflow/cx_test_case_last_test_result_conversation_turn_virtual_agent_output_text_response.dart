// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse {
  /// A collection of text responses.
  final pulumi.Input<List<String>?>? texts;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse].
  /// [texts] A collection of text responses.
  const CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse({
    this.texts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'texts': ?texts,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse(
      texts: (() { final guardedValue = map['texts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
