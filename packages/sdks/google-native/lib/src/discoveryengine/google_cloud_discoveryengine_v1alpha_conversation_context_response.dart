// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1alphaConversationContextResponse {
  /// The current active document the user opened. It contains the document resource reference.
  final pulumi.Input<String> activeDocument;
  /// The current list of documents the user is seeing. It contains the document resource references.
  final pulumi.Input<List<String>> contextDocuments;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationContextResponse].
  /// [activeDocument] The current active document the user opened. It contains the document resource reference.
  /// [contextDocuments] The current list of documents the user is seeing. It contains the document resource references.
  const GoogleCloudDiscoveryengineV1alphaConversationContextResponse({
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
      activeDocument: pulumi.Input.fromValue(map['activeDocument'] as String),
      contextDocuments: pulumi.Input.fromValue((map['contextDocuments'] as List).cast<String>()),
    );
  }
}

