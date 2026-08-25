// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage {
  /// (Output)
  /// The human-readable name of the page, unique within the flow.
  final pulumi.Input<String?>? displayName;
  /// The unique identifier of the page.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  final pulumi.Input<String?>? name;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage].
  /// [displayName] (Output)
  /// [name] The unique identifier of the page.
  const CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
