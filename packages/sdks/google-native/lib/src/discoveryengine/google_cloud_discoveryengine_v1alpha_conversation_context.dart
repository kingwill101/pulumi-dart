// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines context of the conversation
class GoogleCloudDiscoveryengineV1alphaConversationContext {
  /// The current active document the user opened. It contains the document resource reference.
  final pulumi.Input<String>? activeDocument;
  /// The current list of documents the user is seeing. It contains the document resource references.
  final pulumi.Input<List<String>>? contextDocuments;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaConversationContext].
  /// [activeDocument] The current active document the user opened. It contains the document resource reference.
  /// [contextDocuments] The current list of documents the user is seeing. It contains the document resource references.
  const GoogleCloudDiscoveryengineV1alphaConversationContext({
    this.activeDocument,
    this.contextDocuments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDocument': ?activeDocument,
      'contextDocuments': ?contextDocuments,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaConversationContext.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaConversationContext(
      activeDocument: (() { final guardedValue = map['activeDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contextDocuments: (() { final guardedValue = map['contextDocuments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

