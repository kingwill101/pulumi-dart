// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1betaConversationContext {
  /// The current active document the user opened. It contains the document resource reference.
  final pulumi.Input<String>? activeDocument;
  /// The current list of documents the user is seeing. It contains the document resource references.
  final pulumi.Input<List<String>>? contextDocuments;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaConversationContext].
  /// [activeDocument] The current active document the user opened. It contains the document resource reference.
  /// [contextDocuments] The current list of documents the user is seeing. It contains the document resource references.
  GoogleCloudDiscoveryengineV1betaConversationContext({
    this.activeDocument,
    this.contextDocuments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDocument': ?activeDocument,
      'contextDocuments': ?contextDocuments,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaConversationContext.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaConversationContext(
      activeDocument: map['activeDocument'] == null ? null : (map['activeDocument']! as String).input(),
      contextDocuments: map['contextDocuments'] == null ? null : ((map['contextDocuments']! as List).cast<String>()).input(),
    );
  }
}

