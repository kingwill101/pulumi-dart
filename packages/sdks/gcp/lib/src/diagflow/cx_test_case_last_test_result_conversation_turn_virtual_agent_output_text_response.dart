// ignore_for_file: unused_element, unnecessary_cast


class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse {
  /// A collection of text responses.
  final List<String>? texts;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse].
  /// [texts] A collection of text responses.
  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse({
    this.texts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'texts': ?texts,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse(
      texts: map['texts'] == null ? null : (map['texts'] as List).cast<String>(),
    );
  }
}

