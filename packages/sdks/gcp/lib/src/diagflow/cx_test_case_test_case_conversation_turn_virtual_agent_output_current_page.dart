// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage {
  /// (Output)
  /// The human-readable name of the page, unique within the flow.
  final pulumi.Input<String>? displayName;
  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final pulumi.Input<String>? name;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage].
  /// [displayName] (Output)
  /// [name] The unique identifier of the page.
  CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

