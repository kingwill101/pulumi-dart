// ignore_for_file: unused_element, unnecessary_cast


/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1alphaConversationContextResponse {
  /// The current active document the user opened. It contains the document resource reference.
  final String activeDocument;
  /// The current list of documents the user is seeing. It contains the document resource references.
  final List<String> contextDocuments;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationContextResponse].
  /// [activeDocument] The current active document the user opened. It contains the document resource reference.
  /// [contextDocuments] The current list of documents the user is seeing. It contains the document resource references.
  GoogleCloudDiscoveryengineV1alphaConversationContextResponse({
    required this.activeDocument,
    required this.contextDocuments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDocument': activeDocument,
      'contextDocuments': contextDocuments,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationContextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationContextResponse(
      activeDocument: map['activeDocument'] as String,
      contextDocuments: (map['contextDocuments'] as List).cast<String>(),
    );
  }
}

