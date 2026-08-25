// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse {
  /// A collection of text responses.
  final pulumi.Input<List<String>?>? texts;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse].
  /// [texts] A collection of text responses.
  const CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse({
    this.texts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'texts': ?texts,
    };
  }

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse(
      texts: (() { final guardedValue = map['texts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
